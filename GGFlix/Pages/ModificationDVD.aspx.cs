using LibrairieBD.Entites;
using System;
using LibrairieBD.Dao;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ModificationDVD : System.Web.UI.Page
{
    int intDVD = -1;
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<Producteur> prodDao = Persistance.GetDao<Producteur>();
    private GenericDao<Realisateur> realDao = Persistance.GetDao<Realisateur>();
    private GenericDao<Acteur> actDao = Persistance.GetDao<Acteur>();
    private GenericDao<FilmActeur> actFilmDao = Persistance.GetDao<FilmActeur>();
    private GenericDao<FilmsSousTitres> sTitreDao = Persistance.GetDao<FilmsSousTitres>();
    private GenericDao<SousTitre> soustitreDao = Persistance.GetDao<SousTitre>();
    private GenericDao<Exemplaire> exemDao = Persistance.GetDao<Exemplaire>();
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<EmpruntFilm> empruntFilmDao = Persistance.GetDao<EmpruntFilm>();
    private GenericDao<FilmsLangue> filmLangueDao = Persistance.GetDao<FilmsLangue>();
    private GenericDao<Langues> langueDao = Persistance.GetDao<Langues>();
    private GenericDao<Format> formatDao = Persistance.GetDao<Format>();
    private GenericDao<Categorie> catDao = Persistance.GetDao<Categorie>();
    private GenericDao<FilmActeur> filmActeurDao = Persistance.GetDao<FilmActeur>();
    private GenericDao<FilmsSousTitres> filmSousTitreDao = Persistance.GetDao<FilmsSousTitres>();
    private GenericDao<EmpruntFilm> empFilmDao = Persistance.GetDao<EmpruntFilm>();
    private GenericDao<FilmsSupplements> filmSupplementDao = Persistance.GetDao<FilmsSupplements>();
    private GenericDao<Supplement> supplementDao = Persistance.GetDao<Supplement>();
    private GenericDao<Langues> langDao = Persistance.GetDao<Langues>();
    private GenericDao<Supplement> supplDao = Persistance.GetDao<Supplement>();
    private List<Film> lstFilm = new List<Film>();
    Film currentFilm = null;
    Utilisateur currentUser = null;
    String id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = HttpContext.Current.User.Identity.Name;
        intDVD = Convert.ToInt32(Page.RouteData.Values["id"]);
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
       
        AnneeSortie.Attributes["max"] = DateTime.Now.Year.ToString();
        currentFilm = filmDao.Find(new Film { NoFilm = intDVD })[0];
        if (!IsPostBack)
        {
            // Colonne 1
            if (currentFilm.ImagePochette == null||currentFilm.ImagePochette.ToString().Trim().Length == 0)
            {

                if (currentFilm.XTra != null) imageFilm.Attributes.Add("href", currentFilm.XTra);
                imageFilm.ImageUrl = "/Static/img/block.jpg";
            }
            else
            {
                if (currentFilm.XTra != null) imageFilm.Attributes.Add("href", currentFilm.XTra);
                imageFilm.ImageUrl = "/Static/img/" + currentFilm.ImagePochette;
            }
            /* lblProprio.Text = "Propriétaire du DVD : " + utilDao.Find(new Utilisateur { NoUtilisateur = exemDao.Find(new Exemplaire { NoExemplaire = intExemplaire }).First().NoUtilisateurProprietaire }).First().NomUtilisateur;
             lblEmprunteur.Text = "DVD emprunté par : " + utilDao.Find(new Utilisateur { NoUtilisateur = empruntFilmDao.Find(new EmpruntFilm { NoExemplaire = intExemplaire }).OrderByDescending(v => v.DateEmprunt).First().NoUtilisateur }).First().NomUtilisateur;
             lblUtilisateurMAJ.Text = "Dernière mise à jour par : " + utilDao.Find(new Utilisateur { NoUtilisateur = currentFilm.NoUtilisateurMAJ }).First().NomUtilisateur;
             lblDateMAJ.Text = "Date de la mise à jour : " + currentFilm.DateMAJ.ToString();*/

            // Colonne 2
            TitreFrancais.Text = currentFilm.TitreFrancais;
            TitreOriginal.Text = currentFilm.TitreOriginal;
            if (currentFilm.NoProducteur != null)
            {
                NomProducteur.Text = prodDao.Find(new Producteur { NoProducteur = currentFilm.NoProducteur.Value })[0].Nom;
            }
            if (currentFilm.NoRealisateur != null)
            {
                NomRealisateur.Text = realDao.Find(new Realisateur { NoRealisateur = currentFilm.NoRealisateur.Value })[0].Nom;
            }
            AnneeSortie.Text = currentFilm.AnneeSortie.ToString();
            if (currentFilm.Categorie != null)
            {
                tbCategorie.Text = catDao.Find(new Categorie { NoCategorie = currentFilm.Categorie }).First().Description;
            }
            DureeFilm.Text = currentFilm.DureeMinutes.ToString();
            if (currentFilm.Format != null)
            {
                tbFormat.Text = formatDao.Find(new Format { NoFormat = currentFilm.Format })[0].Description;
            }
            tbNbDisques.Text = currentFilm.NbDisques.ToString();
            Resume.Text = currentFilm.Resume;

            //Colonne 3
            for (int i = 1; i <= actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
            {
                TextBox tbActeur = (TextBox)unBloc.FindControl("tbNomActeur" + i);
                CheckBox cbActeurFemme = (CheckBox)unBloc.FindControl("estFemme" + i);
                tbActeur.Text = actDao.Find(new Acteur { NoActeur = actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoActeur })[0].Nom;
                if (actDao.Find(new Acteur { NoActeur = actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoActeur })[0].Sexe == "F") cbActeurFemme.Checked = true;
            }
            for (int i = 1; i <= filmSupplementDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
            {
                TextBox tbSupplement = (TextBox)unBloc.FindControl("tbSupplement" + i);
                tbSupplement.Text = supplementDao.Find(new Supplement { NoSupplement = filmSupplementDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoSupplement })[0].Description;
            }
            for (int i = 1; i <= filmSousTitreDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
            {
                TextBox tbSousTitre = (TextBox)unBloc.FindControl("tbSousTitre" + i);
                tbSousTitre.Text = soustitreDao.Find(new SousTitre { NoSousTitre = filmSousTitreDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoSousTitre })[0].LangueSousTitre;
            }
            for (int i = 1; i <= filmLangueDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
            {
                TextBox tbLangue = (TextBox)unBloc.FindControl("tbLangue" + i);
                tbLangue.Text = langueDao.Find(new Langues { NoLangue = filmLangueDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoLangue })[0].Langue;
            }
            if (currentFilm.FilmOriginal != null)
            {
                DVDOriginal.Checked = currentFilm.FilmOriginal.Value;
            }

            if (currentFilm.VersionEtendue != null)
            {
                VersionEtendue.Checked = currentFilm.VersionEtendue.Value;
            }
        }
        
    }


    protected void btnClickSpecifique(object sender, EventArgs e)
    {
        lblErreur.Text = "";
        lblErreur.Visible = false;
        lblGood.Text = "";
        lblGood.Visible = false;

        string strErreur = "";
        TextBox tbTitreFr = TitreFrancais;
        if (tbTitreFr.Text.Trim().ToString() == "")
        {
            strErreur += "<br />Le titre français ne peut pas être laissé vide;";
        }
        else if (filmDao.Find(new Film { TitreFrancais = tbTitreFr.Text.Trim().Replace("'","''") }).Where(v=>v.NoFilm != currentFilm.NoFilm).Count() > 0)
        {
            strErreur += "<br />Le titre doit être unique;";
        }
        if ((tbNomActeur1.Text.Trim().ToString() == tbNomActeur2.Text.Trim().ToString() && tbNomActeur1.Text.Trim().ToString() != "") || (tbNomActeur1.Text.Trim().ToString()== tbNomActeur3.Text.Trim().ToString() && tbNomActeur1.Text.Trim().ToString() != "") || (tbNomActeur2.Text.Trim().ToString() == tbNomActeur3.Text.Trim().ToString() && tbNomActeur2.Text.Trim().ToString() != ""))
        {
            strErreur += "<br />Un acteur ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbSupplement1.Text.Trim().ToString() == tbSupplement2.Text.Trim().ToString() && tbSupplement1.Text.Trim().ToString() != "") || (tbSupplement1.Text.Trim().ToString() == tbSupplement3.Text.Trim().ToString() && tbSupplement1.Text.Trim().ToString() != "") || (tbSupplement2.Text.Trim().ToString() == tbSupplement3.Text.Trim().ToString() && tbSupplement2.Text.Trim().ToString() != ""))
        {
            strErreur += "<br />Un supplément ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbSousTitre1.Text.Trim().ToString() == tbSousTitre2.Text.Trim().ToString() && tbSousTitre1.Text.Trim().ToString() != "") || (tbSousTitre1.Text.Trim().ToString() == tbSousTitre3.Text.Trim().ToString() && tbSousTitre1.Text.Trim().ToString() != "") || (tbSousTitre2.Text.Trim().ToString() == tbSousTitre3.Text.Trim().ToString() && tbSousTitre2.Text.Trim().ToString() != ""))
        {
            strErreur += "<br />Une langue de sous-titre ne peut pas être ajouté deux fois au même film;";
        }
        if ((tbLangue1.Text.Trim().ToString() == tbLangue2.Text.Trim().ToString() && tbLangue1.Text.Trim().ToString() != "") || (tbLangue1.Text.Trim().ToString() == tbLangue3.Text.Trim().ToString().ToString() && tbLangue1.Text.Trim().ToString() != "") || (tbLangue2.Text.Trim().ToString() == tbLangue3.Text.Trim().ToString() && tbLangue2.Text.Trim().ToString() != ""))
        {
            strErreur += "<br />Une langue ne peut pas être ajouté deux fois au même film;";
        }
        if (FileUpload.FileName.Trim().ToString().Length > 50)
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
        for (int i = 0; i < films.Length - 1; i++)
        {
            if (i == films.Length - 2)
            {
                if (films.Length == 2)
                {
                    textFinal = films[0];
                }
                else
                {
                    textFinal += " et " + films[i];
                }
            }
            else if (i == films.Length - 3)
            {
                textFinal += films[i];
            }
            else if (i <= films.Length - 4)
            {
                textFinal += films[i] + ", ";
            }
        }
        return textFinal;

    }

    public void messageLblGood(string strText, int nbFilms)
    {
        lblGood.Text = "Le film : " + filmEnChaine(strText) + " a été modifié";
        lblGood.Visible = true;

    }

    protected void afficherImage_Click(object sender, EventArgs e)
    {
        if (FileUpload.HasFile)
        {
            FileUpload.SaveAs(MapPath("/Static/img/" + FileUpload.FileName));
            imageFilm.ImageUrl = "/Static/img/" + FileUpload.FileName;
        }
    }

    public void ajouteFilm()
    {
        Film filmAdd = new Film();
        filmAdd = currentFilm;
        Producteur prodAjouter = null;
        Realisateur realAjouter = null;
        Format formAjouter = null;
        Categorie catAjouter = null;
        List<Acteur> lstAct = new List<Acteur>();
        List<Supplement> lstSuppl = new List<Supplement>();
        List<SousTitre> lstSousTitre = new List<SousTitre>();
        List<Langues> lstLangue = new List<Langues>();
        //Langues
        if (NomProducteur.Text.Trim() != "" && prodDao.Find(new Producteur { Nom = NomProducteur.Text.Trim().Replace("'","''") }).Count > 0)
        {
            prodAjouter = prodDao.Find(new Producteur { Nom = NomProducteur.Text.Trim().Replace("'", "''") }).First();
        }
        else if (NomProducteur.Text.Trim() != "")
        {
            prodAjouter = prodDao.Save(new Producteur { Nom = NomProducteur.Text.Trim().Replace("'", "''") });
        }
        //Realisateur
        if (NomRealisateur.Text.Trim() != "" && realDao.Find(new Realisateur { Nom = NomRealisateur.Text.Trim().Replace("'", "''") }).Count > 0)
        {
            realAjouter = realDao.Find(new Realisateur { Nom = NomRealisateur.Text.Trim().Replace("'", "''") }).First();
        }
        else if (NomRealisateur.Text.Trim() != "")
        {
            realAjouter = realDao.Save(new Realisateur { Nom = NomRealisateur.Text.Trim().Replace("'", "''") });
        }
        //Catégorie
        if (tbCategorie.Text.Trim() != "" && catDao.Find(new Categorie { Description = tbCategorie.Text.Trim().Replace("'", "''") }).Count > 0)
        {
            catAjouter = catDao.Find(new Categorie { Description = tbCategorie.Text.Trim().Replace("'", "''") }).First();
        }
        else if (tbCategorie.Text.Trim() != "")
        {
            catAjouter = catDao.Save(new Categorie { Description = tbCategorie.Text.Trim().Replace("'", "''") });
        }
        //Format
        if (tbFormat.Text.Trim() != "" && formatDao.Find(new Format { Description = tbFormat.Text.Trim().Replace("'", "''") }).Count > 0)
        {
            formAjouter = formatDao.Find(new Format { Description = tbFormat.Text.Trim().Replace("'", "''") }).First();
        }
        else if (tbFormat.Text.Trim() != "")
        {
            formAjouter = formatDao.Save(new Format { Description = tbFormat.Text.Trim().Replace("'", "''") });
        }
        // Acteurs
        for (int i = 1; i <= 3; i++)
        {
            TextBox tbActeur = (TextBox)unBloc.FindControl("tbNomActeur" + i);
            CheckBox cbFemme = (CheckBox)unBloc.FindControl("estFemme" + i);
            if (tbActeur.Text.Trim() != "")
            {
                if (actDao.Find(new Acteur { Nom = tbActeur.Text.Trim().Replace("'", "''") }).Count > 0)
                {
                    Acteur act = actDao.Find(new Acteur { Nom = tbActeur.Text.Trim().Replace("'", "''") }).First();
                    lstAct.Add(act);
                }
                else
                {
                    char sexe = 'H';
                    if (cbFemme.Checked)
                    {
                        sexe = 'F';
                    }
                    Acteur act = actDao.Save(new Acteur { Nom = tbActeur.Text.Trim().Replace("'", "''"), Sexe = sexe.ToString() });
                    lstAct.Add(act);
                }
            }
        }
        // Suppléments
        for (int i = 1; i <= 3; i++)
        {
            TextBox tbSuppl = (TextBox)unBloc.FindControl("tbSupplement" + i);
            if (tbSuppl.Text.Trim() != "")
            {
                if (supplDao.Find(new Supplement { Description = tbSuppl.Text.Trim().Replace("'", "''") }).Count > 0)
                {
                    Supplement suppl = supplDao.Find(new Supplement { Description = tbSuppl.Text.Trim().Replace("'", "''") }).First();
                    lstSuppl.Add(suppl);
                }
                else
                {
                    Supplement suppl = supplDao.Save(new Supplement { Description = tbSuppl.Text.Trim().Replace("'", "''") });
                    lstSuppl.Add(suppl);
                }
            }
        }
        // Sous-titre
        for (int i = 1; i <= 3; i++)
        {
            TextBox tbSousTitre = (TextBox)unBloc.FindControl("tbSousTitre" + i);
            if (tbSousTitre.Text.Trim() != "")
            {
                if (soustitreDao.Find(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim().Replace("'", "''") }).Count > 0)
                {
                    SousTitre sous = soustitreDao.Find(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim().Replace("'", "''") }).First();
                    lstSousTitre.Add(sous);
                }
                else
                {
                    SousTitre sous = soustitreDao.Save(new SousTitre { LangueSousTitre = tbSousTitre.Text.Trim().Replace("'", "''") });
                    lstSousTitre.Add(sous);
                }
            }
        }
        // Langue
        for (int i = 1; i <= 3; i++)
        {
            TextBox tbLangue = (TextBox)unBloc.FindControl("tbLangue" + i);
            if (tbLangue.Text.Trim() != "")
            {
                if (langDao.Find(new Langues { Langue = tbLangue.Text.Trim() }).Count > 0)
                {
                    Langues lang = langDao.Find(new Langues { Langue = tbLangue.Text.Trim().Replace("'", "''") }).First();
                    lstLangue.Add(lang);
                }
                else
                {
                    Langues lang = langDao.Save(new Langues { Langue = tbLangue.Text.Trim().Replace("'", "''") });
                    lstLangue.Add(lang);
                }
            }
        }
        TextBox tbTitreFr = TitreFrancais;
        TextBox tbOriginal = TitreOriginal;
        filmAdd.TitreFrancais = tbTitreFr.Text.Trim().ToString();
        if (tbOriginal.Text.Trim() != "")
        {
            filmAdd.TitreOriginal = tbOriginal.Text.Trim().ToString();
        }
        if (prodAjouter != null)
        {
            filmAdd.NoProducteur = prodAjouter.NoProducteur;
        }
        if (realAjouter != null)
        {
            filmAdd.NoRealisateur = realAjouter.NoRealisateur;
        }
        if (AnneeSortie.Text.Trim() != "")
        {
            filmAdd.AnneeSortie = int.Parse(AnneeSortie.Text.Trim().ToString());
        }
        if (catAjouter != null)
        {
            filmAdd.Categorie = catAjouter.NoCategorie;
        }
        if (DureeFilm.Text.Trim() != "")
        {
            filmAdd.DureeMinutes = int.Parse(DureeFilm.Text.Trim().ToString());
        }
        if (formAjouter != null)
        {
            filmAdd.Format = formAjouter.NoFormat;
        }
        if (tbNbDisques.Text.Trim() != "")
        {
            filmAdd.NbDisques = int.Parse(tbNbDisques.Text.Trim().ToString());
        }
        if (tbXtra.Text.Trim() != "")
        {
            filmAdd.XTra = tbXtra.Text.Trim().ToString();
        }
        if (imageFilm.ImageUrl.Trim() != "")
        {
            String[] strUrl = imageFilm.ImageUrl.Split('/');
            if (strUrl[strUrl.Length - 1] != "block.jpg") filmAdd.ImagePochette = strUrl[strUrl.Length - 1];
        }
        if (Resume.Text.Trim() != "")
        {
            filmAdd.Resume = Resume.Text.Trim().ToString();
        }
        filmAdd.DateMAJ = DateTime.Now;
        filmAdd.NoUtilisateurMAJ = currentUser.NoUtilisateur;
        filmAdd.VersionEtendue = VersionEtendue.Checked;
        filmAdd.FilmOriginal = DVDOriginal.Checked;
        List<FilmActeur> lstFlmActeurs = filmActeurDao.FindAll().Where(v => v.NoFilm == filmAdd.NoFilm).ToList();
        foreach (FilmActeur fa in lstFlmActeurs) filmActeurDao.Delete(fa);
        List<FilmsSupplements> lstFlmSupplements = filmSupplementDao.FindAll().Where(v => v.NoFilm == filmAdd.NoFilm).ToList();
        foreach (FilmsSupplements fs in lstFlmSupplements) filmSupplementDao.Delete(fs);
        List<FilmsSousTitres> lstFlmSousTitre = filmSousTitreDao.FindAll().Where(v => v.NoFilm == filmAdd.NoFilm).ToList();
        foreach (FilmsSousTitres fst in lstFlmSousTitre) filmSousTitreDao.Delete(fst);
        List<FilmsLangue> lstFlmLangue = filmLangueDao.FindAll().Where(v => v.NoFilm == filmAdd.NoFilm).ToList();
        foreach (FilmsLangue fl in lstFlmLangue) filmLangueDao.Delete(fl);
        filmDao.Delete(filmDao.FindAll().Where(v => v.NoFilm == filmAdd.NoFilm).First());
        Film film = filmDao.Save(filmAdd);
        

        foreach (Acteur act in lstAct)
        {
            FilmActeur fa = new FilmActeur { NoFilm = film.NoFilm, NoActeur = act.NoActeur };
            filmActeurDao.Save(fa);
        }

        foreach (Supplement suppl in lstSuppl)
        {
            FilmsSupplements fs = new FilmsSupplements { NoFilm = film.NoFilm, NoSupplement = suppl.NoSupplement };
            filmSupplementDao.Save(fs);
        }

        foreach (SousTitre sTitre in lstSousTitre)
        {
            filmSousTitreDao.Save(new FilmsSousTitres { NoFilm = film.NoFilm, NoSousTitre = sTitre.NoSousTitre });
        }

        foreach (Langues lang in lstLangue)
        {
            filmLangueDao.Save(new FilmsLangue { NoFilm = film.NoFilm, NoLangue = lang.NoLangue });
        }
        // Peut-être boucle pour plusieurs? Faudrait aussi modifier pour le type d'utilisateur (superuser je crois que c'est le NoUtilisateur choisi)
        messageLblGood(film.TitreFrancais + ";", 1);
    }
}