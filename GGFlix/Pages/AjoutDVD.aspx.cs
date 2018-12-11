using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public partial class Pages_AjoutDVD : System.Web.UI.Page
{
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<Categorie> catDao = Persistance.GetDao<Categorie>();
    private GenericDao<Producteur> prodDao = Persistance.GetDao<Producteur>();
    private GenericDao<Realisateur> realDao = Persistance.GetDao<Realisateur>();
    private GenericDao<SousTitre> soustitreDao = Persistance.GetDao<SousTitre>();
    private GenericDao<Acteur> actDao = Persistance.GetDao<Acteur>();
    private GenericDao<Langues> langDao = Persistance.GetDao<Langues>();
    private GenericDao<Supplement> supplDao = Persistance.GetDao<Supplement>();
    private GenericDao<Format> formatDao = Persistance.GetDao<Format>();


    private GenericDao<Exemplaire> exempDao = Persistance.GetDao<Exemplaire>();
    private GenericDao<FilmActeur> filmActeurDao = Persistance.GetDao<FilmActeur>();
    private GenericDao<FilmsLangue> filmLangueDao = Persistance.GetDao<FilmsLangue>();
    private GenericDao<FilmsSousTitres> filmSousTitreDao = Persistance.GetDao<FilmsSousTitres>();
    private GenericDao<EmpruntFilm> empFilmDao = Persistance.GetDao<EmpruntFilm>();
    private GenericDao<FilmsSupplements> filmSupplementDao = Persistance.GetDao<FilmsSupplements>();
    private List<Film> lstFilm = new List<Film>();

    private List<Film> filmAjoute = new List<Film>();

    Utilisateur currentUser = null;
    String id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        pnApercu.Visible = false;

        id = HttpContext.Current.User.Identity.Name;
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
        if(currentUser.TypeUtilisateur == "S")
        {
            AjoutPour.Items.Clear();
            ListItem itemVide = new ListItem();
            itemVide.Text = "Ajouter pour un autre utilisateur";
            itemVide.Value = "";
            AjoutPour.Items.Add(itemVide);
            foreach(Utilisateur util in utilDao.FindAll().Where(v=> v.TypeUtilisateur != "A" && v.NoUtilisateur != currentUser.NoUtilisateur))
            {
                ListItem item = new ListItem();
                item.Value = util.NoUtilisateur.ToString();
                item.Text = util.NomUtilisateur;
                AjoutPour.Items.Add(item);
            }
            AjoutPour.Visible = true;
        }
        afficheDIV(sender, e);
        AnneeSortie.Attributes["max"] = DateTime.Now.Year.ToString();
    }

    protected void afficheDIV(object sender, EventArgs e)
    {
        int valComboType = int.Parse(typeAjout.Text);
        if(valComboType == 0)
        {
            divAbrege.Visible = true;
            divComplet.Visible = false;
            btnAjouter.Click += new EventHandler(btnClickSimple);
            btnAjouter.Click -= new EventHandler(btnClickSpecifique);
        }
        else
        {
            divAbrege.Visible = false;
            divComplet.Visible = true;
            btnAjouter.Click -= new EventHandler(btnClickSimple);
            btnAjouter.Click += new EventHandler(btnClickSpecifique);
        }
    }

    protected void btnClickSimple(object sender, EventArgs e)
    {
        lblErreur.Text = "";
        lblErreur.Visible = false;
        lblGood.Text = "";
        lblGood.Visible = false;

        string strErreur = "";
        string strAjoutable = "";
        
        int intTitreIllegal = 0;
        int intTitreOk = 0;

        for (int i = 1; i <= 10; i++)
        {
            
            TextBox tbEnCours = (TextBox)divAbrege.FindControl("tb" + i);
            if (tbEnCours.Text.Trim() != "")
            {
                lstFilm = filmDao.FindAll().Where(v => v.TitreFrancais == tbEnCours.Text.Trim()).ToList();
                if (lstFilm.Count > 0)
                {
                    intTitreIllegal++;
                    strErreur += tbEnCours.Text.Trim() + ";";
                    tbEnCours.Text = "";
                }
                else
                {
                    intTitreOk++;
                    strAjoutable += tbEnCours.Text.Trim()+";";

                    Film film = new Film();
                    film.TitreFrancais = tbEnCours.Text.Trim();
                    film.DateMAJ = DateTime.Now;
                    film.NoUtilisateurMAJ = currentUser.NoUtilisateur;
                    Film filmAjout = filmDao.Save(film);
                    int intExmp = int.Parse(filmAjout.NoFilm + "01");
                    if (AjoutPour.SelectedValue != "")
                    {
                        int noAjout = int.Parse(AjoutPour.SelectedValue);
                        Exemplaire exmp = new Exemplaire { NoExemplaire = intExmp, NoUtilisateurProprietaire = noAjout };
                        exempDao.Save(exmp);
                        EmpruntFilm empruntFilm = new EmpruntFilm { NoExemplaire = intExmp, NoUtilisateur = noAjout, DateEmprunt = DateTime.Now };
                        empFilmDao.Save(empruntFilm);
                    }
                    else
                    {
                        Exemplaire exmp = new Exemplaire { NoExemplaire = intExmp, NoUtilisateurProprietaire = currentUser.NoUtilisateur };
                        exempDao.Save(exmp);
                        EmpruntFilm empruntFilm = new EmpruntFilm { NoExemplaire = intExmp, NoUtilisateur = currentUser.NoUtilisateur, DateEmprunt = DateTime.Now };
                        empFilmDao.Save(empruntFilm);
                    }
                    tbEnCours.Text = "";

                    pnApercu.Visible = true;
                    hidFilms.Value += filmAjout.TitreFrancais + ", ";
                }
            }
        }
        if (intTitreIllegal > 1)
        {
            lblErreur.Text = "Les films : " + filmEnChaine(strErreur) + " ne peuvent pas être ajoutés";
            lblErreur.Visible = true;
            messageLblGood(strAjoutable, intTitreOk);
        }
        else if(intTitreIllegal == 1)
        {
            lblErreur.Text = "Le film : " + filmEnChaine(strErreur) + " ne peut pas être ajouté";
            lblErreur.Visible = true;
            messageLblGood(strAjoutable, intTitreOk);
        }
        else
        {
            messageLblGood(strAjoutable, intTitreOk);
        }
    }

    protected void btnClickSpecifique(object sender, EventArgs e)
    {
        lblErreur.Text = "";
        lblErreur.Visible = false;
        lblGood.Text = "";
        lblGood.Visible = false;

        string strErreur = "";

        if (TitreFrancais.Text.Trim() == "")
        {
            strErreur += "<br />Le titre français ne peut pas être laissé vide;";
        }
        else if(filmDao.Find(new Film { TitreFrancais = TitreFrancais.Text.Trim()}).Count > 0)
        {
            strErreur += "<br />Le titre doit être unique;";
        } 
        if ((tbNomActeur1.Text.Trim() == tbNomActeur2.Text.Trim() && tbNomActeur1.Text.Trim() != "") || (tbNomActeur1.Text.Trim() == tbNomActeur3.Text.Trim() && tbNomActeur1.Text.Trim() != "") || (tbNomActeur2.Text.Trim() == tbNomActeur3.Text.Trim() && tbNomActeur2.Text.Trim() != ""))
        {
            strErreur += "<br />Un acteur ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbSupplement1.Text.Trim() == tbSupplement2.Text.Trim() && tbSupplement1.Text.Trim() != "") || (tbSupplement1.Text.Trim() == tbSupplement3.Text.Trim() && tbSupplement1.Text.Trim() != "") || (tbSupplement2.Text.Trim() == tbSupplement3.Text.Trim() && tbSupplement2.Text.Trim() != ""))
        {
            strErreur += "<br />Un supplément ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbSousTitre1.Text.Trim() == tbSousTitre2.Text.Trim() && tbSousTitre1.Text.Trim() != "") || (tbSousTitre1.Text.Trim() == tbSousTitre3.Text.Trim() && tbSousTitre1.Text.Trim() != "") || (tbSousTitre2.Text.Trim() == tbSousTitre3.Text.Trim() && tbSousTitre2.Text.Trim() != ""))
        {
            strErreur += "<br />Une langue de sous-titre ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbLangue1.Text.Trim() == tbLangue2.Text.Trim() && tbLangue1.Text.Trim() != "") || (tbLangue1.Text.Trim() == tbLangue3.Text.Trim() && tbLangue1.Text.Trim() != "") || (tbLangue2.Text.Trim() == tbLangue3.Text.Trim() && tbLangue2.Text.Trim() != ""))
        {
            strErreur += "<br />Une langue ne peut pas être ajouté deux fois au même film;";
        }
        if(FileUpload.FileName.Trim().Length > 50)
        {
            strErreur += "<br />L'URL de l'image du film ne peut pas être de plus de 50 caractères";
        }
        if (strErreur != "")
        {
            lblErreur.Text = "Erreur : " + filmEnChaine(strErreur);
            lblErreur.Visible = true;
        }
        else
        {
            ajouteFilm();
        }
    }

    //Fou méthode qui te donne la suite de film placé prêt-à-emporter
    public String filmEnChaine(string film)
    {
        string textFinal = "";
        string[] films = film.Split(';');
        for(int i = 0; i < films.Length-1; i++)
        {
            if(i== films.Length-2)
            {
                if(films.Length == 2)
                {
                    textFinal = films[0];
                }
                else
                {
                    textFinal += " et " + films[i];
                }
            }
            else if(i== films.Length - 3)
            {
                textFinal += films[i];
            }
            else if(i <= films.Length - 4)
            {
                textFinal += films[i]+", ";
            }
        }
        return textFinal;
        
    }

    public void messageLblGood(string strText, int nbFilms)
    {
        if(nbFilms >= 1)
        {
            if (nbFilms > 1)
            {
                lblGood.Text = "Les films : " + filmEnChaine(strText) + " sont ajoutés";
                lblGood.Visible = true;
            }
            else if (nbFilms == 1)
            {
                lblGood.Text = "Le film : " + filmEnChaine(strText) + "a été ajouté";
                lblGood.Visible = true;
            }
        }
    }

    protected void afficherImage_Click(object sender,EventArgs e)
    {
        if (FileUpload.HasFile)
        {
            FileUpload.SaveAs(MapPath("/Static/img/" + FileUpload.FileName));
            imageFilm.ImageUrl = "/Static/img/"+FileUpload.FileName;
        }
    }

    public void ajouteFilm()
    {
        Film filmAdd = new Film();
        Producteur prodAjouter = null;
        Realisateur realAjouter = null;
        Format formAjouter = null;
        Categorie catAjouter = null;
        List<Acteur> lstAct = new List<Acteur>();
        List<Supplement> lstSuppl = new List<Supplement>();
        List<SousTitre> lstSousTitre = new List<SousTitre>();
        List<Langues> lstLangue = new List<Langues>();
        //Langues
        if(NomProducteur.Text.Trim() != "" && prodDao.Find(new Producteur { Nom = NomProducteur.Text.Trim() }).Count > 0)
        {
            prodAjouter = prodDao.Find(new Producteur { Nom = NomProducteur.Text.Trim() }).First();
        }
        else if(NomProducteur.Text.Trim() != "")
        {
            prodAjouter = prodDao.Save(new Producteur { Nom = NomProducteur.Text.Trim() });
        }
        //Realisateur
        if (NomRealisateur.Text.Trim() != "" && realDao.Find(new Realisateur { Nom = NomRealisateur.Text.Trim() }).Count > 0)
        {
            realAjouter = realDao.Find(new Realisateur { Nom = NomRealisateur.Text.Trim() }).First();
        }
        else if(NomRealisateur.Text.Trim() != "")
        {
            realAjouter = realDao.Save(new Realisateur { Nom = NomRealisateur.Text.Trim() });
        }
        //Catégorie
        if (tbCategorie.Text.Trim() != "" && catDao.Find(new Categorie { Description = tbCategorie.Text.Trim() }).Count > 0)
        {
            catAjouter = catDao.Find(new Categorie { Description = tbCategorie.Text.Trim() }).First();
        }
        else if(tbCategorie.Text.Trim() != "")
        {
            catAjouter = catDao.Save(new Categorie { Description = tbCategorie.Text.Trim() });
        }
        //Format
        if (tbFormat.Text.Trim() != "" && formatDao.Find(new Format { Description = tbFormat.Text.Trim() }).Count > 0)
        {
            formAjouter = formatDao.Find(new Format { Description = tbFormat.Text.Trim() }).First();
        }
        else if(tbFormat.Text.Trim() != "")
        {
            formAjouter = formatDao.Save(new Format { Description = tbFormat.Text.Trim() });
        }
        // Acteurs
        for(int i = 1; i <= 3; i++)
        {
            TextBox tbActeur = (TextBox) divComplet.FindControl("tbNomActeur" + i);
            CheckBox cbFemme = (CheckBox)divComplet.FindControl("estFemme" + i);
            if (tbActeur.Text.Trim() != "")
            {
                if(actDao.Find(new Acteur { Nom = tbActeur.Text.Trim()}).Count > 0)
                {
                    Acteur act = actDao.Find(new Acteur { Nom = tbActeur.Text.Trim() }).First();
                    lstAct.Add(act);
                }
                else
                {
                    char sexe = 'H';
                    if (cbFemme.Checked)
                    {
                        sexe = 'F';
                    }
                    Acteur act = actDao.Save(new Acteur { Nom = tbActeur.Text.Trim(), Sexe = sexe.ToString()});
                    lstAct.Add(act);
                }
            }
        }
        // Suppléments
        for (int i = 1; i <= 3; i++)
        { 
            TextBox tbSuppl = (TextBox)divComplet.FindControl("tbSupplement" + i);
            if (tbSuppl.Text.Trim() != "")
            {
                if (supplDao.Find(new Supplement { Description = tbSuppl.Text.Trim() }).Count > 0)
                {
                    Supplement suppl = supplDao.Find(new Supplement { Description = tbSuppl.Text.Trim() }).First();
                    lstSuppl.Add(suppl);
                }
                else
                {
                    Supplement suppl = supplDao.Save(new Supplement { Description = tbSuppl.Text.Trim() });
                    lstSuppl.Add(suppl);
                }
            }
        } 
        // Sous-titre
        for (int i = 1; i <= 3; i++)
        {  
            TextBox tbSousTitre = (TextBox)divComplet.FindControl("tbSousTitre" + i);
            if (tbSousTitre.Text.Trim() != "")
            {
                if (soustitreDao.Find(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim() }).Count > 0)
                {
                    SousTitre sous = soustitreDao.Find(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim() }).First();
                    lstSousTitre.Add(sous);
                }
                else
                {
                    SousTitre sous = soustitreDao.Save(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim() });
                    lstSousTitre.Add(sous);
                }
            }
        }
        // Langue
        for (int i = 1; i <= 3; i++)
        {   
            TextBox tbLangue = (TextBox)divComplet.FindControl("tbLangue" + i);
            if (tbLangue.Text.Trim() != "")
            {
                if (langDao.Find(new Langues { Langue = tbLangue.Text.Trim() }).Count > 0)
                {
                    Langues lang = langDao.Find(new Langues { Langue = tbLangue.Text.Trim() }).First();
                    lstLangue.Add(lang);
                }
                else
                {
                    Langues lang = langDao.Save(new Langues { Langue = tbLangue.Text.Trim() });
                    lstLangue.Add(lang);
                }
            }
        }
        filmAdd.TitreFrancais = TitreFrancais.Text.Trim();
        if(TitreOriginal.Text.Trim() != "")
        {
            filmAdd.TitreOriginal = TitreOriginal.Text.Trim();
        }
        if(prodAjouter != null)
        {
            filmAdd.NoProducteur = prodAjouter.NoProducteur;
        }
        if(realAjouter != null)
        {
            filmAdd.NoRealisateur = realAjouter.NoRealisateur;
        }
        if(AnneeSortie.Text.Trim() != "")
        {
            filmAdd.AnneeSortie = int.Parse(AnneeSortie.Text.Trim());
        }
        if(catAjouter != null)
        {
            filmAdd.Categorie = catAjouter.NoCategorie;
        }
        if(DureeFilm.Text.Trim() != "")
        {
            filmAdd.DureeMinutes = int.Parse(DureeFilm.Text.Trim());
        }
        if(formAjouter != null)
        {
            filmAdd.Format = formAjouter.NoFormat;
        }
        if(tbNbDisques.Text.Trim() != "")
        {
            filmAdd.NbDisques = int.Parse(tbNbDisques.Text.Trim());
        }
        if(tbXtra.Text.Trim() != "")
        {
            filmAdd.XTra = tbXtra.Text.Trim();
        }
        if(imageFilm.ImageUrl.Trim() != "")
        {
            String[] strUrl = imageFilm.ImageUrl.Split('/');
            if(strUrl[strUrl.Length-1] != "block.jpg") filmAdd.ImagePochette = strUrl[strUrl.Length-1];
        }
        if(Resume.Text.Trim() != "")
        {
            filmAdd.Resume = Resume.Text.Trim();
        }
        filmAdd.DateMAJ = DateTime.Now;
        filmAdd.NoUtilisateurMAJ = currentUser.NoUtilisateur;
        filmAdd.VersionEtendue = VersionEtendue.Checked;
        filmAdd.FilmOriginal = DVDOriginal.Checked;
        Film film = filmDao.Save(filmAdd);
        foreach(Acteur act in lstAct)
        {
            filmActeurDao.Save(new FilmActeur { NoFilm = film.NoFilm, NoActeur = act.NoActeur });
        }
        foreach(Supplement suppl in lstSuppl)
        {
            filmSupplementDao.Save(new FilmsSupplements { NoFilm = film.NoFilm, NoSupplement = suppl.NoSupplement });
        }
        foreach(SousTitre sTitre in lstSousTitre)
        {
            filmSousTitreDao.Save(new FilmsSousTitres { NoFilm = film.NoFilm, NoSousTitre = sTitre.NoSousTitre });
        }
        foreach(Langues lang in lstLangue)
        {
            filmLangueDao.Save(new FilmsLangue { NoFilm = film.NoFilm, NoLangue = lang.NoLangue });
        }
        // Peut-être boucle pour plusieurs? Faudrait aussi modifier pour le type d'utilisateur (superuser je crois que c'est le NoUtilisateur choisi)
        int intExmp = int.Parse(film.NoFilm + "01");
        if (AjoutPour.SelectedValue != "")
        {
            int noAjout = int.Parse(AjoutPour.SelectedValue);
            Exemplaire exmp = new Exemplaire { NoExemplaire = intExmp, NoUtilisateurProprietaire = noAjout };
            exempDao.Save(exmp);
            EmpruntFilm empruntFilm = new EmpruntFilm { NoExemplaire = intExmp, NoUtilisateur = noAjout, DateEmprunt = DateTime.Now };
            empFilmDao.Save(empruntFilm);
        }
        else
        {
            Exemplaire exmp = new Exemplaire { NoExemplaire = intExmp, NoUtilisateurProprietaire = currentUser.NoUtilisateur };
            exempDao.Save(exmp);
            EmpruntFilm empruntFilm = new EmpruntFilm { NoExemplaire = intExmp, NoUtilisateur = currentUser.NoUtilisateur, DateEmprunt = DateTime.Now };
            empFilmDao.Save(empruntFilm);
        }
        messageLblGood(film.TitreFrancais + ";", 1);
    }

    protected void ApercuCourriel(object sender, EventArgs args)
    {
        IList<Utilisateur> utils = Persistance.RecupererUtilisateursAyantPreferences(4, "Oui");
        string courriels = "";
        for (int i = 0; i < utils.Count; i++)
        {
            courriels += utils[i].Courriel;
            if (i < utils.Count - 1)
            {
                courriels += ";";
            }
        }

        Context.Items.Add("A", courriels == "" ? "Personne" : courriels);
        Context.Items.Add("De", Securite.UtilisateurCourant.Courriel);
        Context.Items.Add("Objet", "Création de DVD(s)");
        Context.Items.Add("Contenu", "Les DVD(s) suivant(s) ont été ajouté(s) par " + Securite.UtilisateurCourant.NomUtilisateur + ": " + hidFilms.Value.Remove(hidFilms.Value.Length - 2));

        hidFilms.Value = "";

        Server.Transfer("~/Pages/ApercuCourriel.aspx", true);
    }
}