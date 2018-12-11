using LibrairieBD.Entites;
using System;
using LibrairieBD.Dao;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AffichageDesDonneesDetaillesDunDVD : System.Web.UI.Page
{
    int intDVD = 0;
    int intExemplaire = 0;
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
    int noExemp;
    protected void Page_Load(object sender, EventArgs e)
    {
        pnApercuCourriel.Visible = false;

        ClientScript.GetPostBackEventReference(this, string.Empty);
        intDVD = Convert.ToInt32(Page.RouteData.Values["id"]);
        intExemplaire = Convert.ToInt32(Page.RouteData.Values["noExemp"]);
        Film currentFilm = filmDao.Find(new Film { NoFilm = intDVD })[0];
        String id = HttpContext.Current.User.Identity.Name;
        Utilisateur currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
        if (currentUser.TypeUtilisateur == "S")
        {
            string target = Request["__EVENTTARGET"].ToString();
            string argument = Request["__EVENTARGUMENT"].ToString();
            if (target != null && argument.Equals("Approprier"))
            {
            }
            else if (Page.RouteData.Values["noExemp"] != null && !Page.RouteData.Values["noExemp"].ToString().Trim().Equals(""))
            {
                AppropriationPour.Items.Clear();
                foreach (Utilisateur util in utilDao.FindAll().Where(v => v.TypeUtilisateur != "A" && v.NoUtilisateur != currentUser.NoUtilisateur))
                {
                    ListItem item = new ListItem();
                    item.Value = util.NoUtilisateur.ToString();
                    item.Text = util.NomUtilisateur;
                    AppropriationPour.Items.Add(item);
                    pnApercuCourriel.Visible = true;
                }
            }

        }
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
        lblProprio.Text = "Propriétaire du DVD : " + utilDao.Find(new Utilisateur { NoUtilisateur = exemDao.Find(new Exemplaire { NoExemplaire = intExemplaire }).First().NoUtilisateurProprietaire }).First().NomUtilisateur;
        lblEmprunteur.Text = "DVD emprunté par : " + utilDao.Find(new Utilisateur { NoUtilisateur = empruntFilmDao.Find(new EmpruntFilm { NoExemplaire = intExemplaire }).OrderByDescending(v => v.DateEmprunt).First().NoUtilisateur }).First().NomUtilisateur;
        lblUtilisateurMAJ.Text = "Dernière mise à jour par : " + utilDao.Find(new Utilisateur { NoUtilisateur = currentFilm.NoUtilisateurMAJ }).First().NomUtilisateur;
        lblDateMAJ.Text = "Date de la mise à jour : " + currentFilm.DateMAJ.ToString();

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
        DureeFilm.Text = currentFilm.DureeMinutes.ToString() +" minutes";
        if(currentFilm.Format != null)
        {
            tbFormat.Text = formatDao.Find(new Format { NoFormat = currentFilm.Format })[0].Description;
        }
        tbNbDisques.Text = currentFilm.NbDisques.ToString();
        Resume.Text = currentFilm.Resume;

        //Colonne 3
        for (int i = 1; i <= actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
        {
            Label tbActeur =(Label) unBloc.FindControl("tbNomActeur" + i);
            CheckBox cbActeurFemme = (CheckBox)unBloc.FindControl("estFemme" + i);
            tbActeur.Text = actDao.Find(new Acteur { NoActeur = actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList()[i-1].NoActeur })[0].Nom;
            if (actDao.Find(new Acteur { NoActeur = actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList()[i - 1].NoActeur })[0].Sexe == "F") cbActeurFemme.Checked = true;
        }
        for (int i = 1; i <= filmSupplementDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
        {
            Label tbSupplement = (Label) unBloc.FindControl("tbSupplement" + i);
            tbSupplement.Text = supplementDao.Find(new Supplement { NoSupplement = filmSupplementDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i-1].NoSupplement })[0].Description;
        }
        for (int i = 1; i <= filmSousTitreDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
        {
            Label tbSousTitre = (Label) unBloc.FindControl("tbSousTitre" + i);
            tbSousTitre.Text = soustitreDao.Find(new SousTitre { NoSousTitre = filmSousTitreDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i-1].NoSousTitre })[0].LangueSousTitre;
        }
        for (int i = 1; i <= filmLangueDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList().Count; i++)
        {
            Label tbLangue = (Label) unBloc.FindControl("tbLangue" + i);
            tbLangue.Text = langueDao.Find(new Langues { NoLangue = filmLangueDao.FindAll().Where(v => v.NoFilm == currentFilm.NoFilm).ToList()[i-1].NoLangue })[0].Langue;
        }
        if (currentFilm.FilmOriginal!=null)
        {
            DVDOriginal.Checked = currentFilm.FilmOriginal.Value;
        }

         if (currentFilm.VersionEtendue != null) {
            VersionEtendue.Checked = currentFilm.VersionEtendue.Value;
        }
        if (Page.RouteData.Values["idUtil"] != null && (!Page.RouteData.Values["idUtil"].ToString().Trim().Equals("") && !Page.RouteData.Values["idUtil"].ToString().Trim().Substring(0, 2).Equals("N-")))
        {
            string target = Request["__EVENTTARGET"].ToString();
            string argument = Request["__EVENTARGUMENT"].ToString();
            if (target != null && argument.Equals("Approprier"))
            {
                
                if (currentUser.TypeUtilisateur == "S")
                {
                    EmpruntFilm empF = empruntFilmDao.FindAll().Where(exem => (exem.NoExemplaire == intExemplaire) && (exem.NoUtilisateur ==utilDao.Find(new Utilisateur { NomUtilisateur = AppropriationPour.SelectedItem.Text }).FirstOrDefault().NoUtilisateur)).FirstOrDefault();
                    // On lui donnera le dvd dans BDD
                    if (empF != null)
                    {
                        System.Diagnostics.Debug.WriteLine("entre");
                        empF.DateEmprunt = DateTime.Now;
                        empruntFilmDao.Save(empF);
                    }
                    else
                    {
                        empruntFilmDao.Save(new EmpruntFilm { NoExemplaire = intExemplaire, NoUtilisateur = utilDao.Find(new Utilisateur { NomUtilisateur = AppropriationPour.SelectedItem.Text }).FirstOrDefault().NoUtilisateur, DateEmprunt = DateTime.Now });
                    }
                    System.Diagnostics.Debug.WriteLine(AppropriationPour.SelectedItem.Text);
                }
                else
                {
                    EmpruntFilm empF = empruntFilmDao.FindAll().Where(exem => (exem.NoExemplaire == intExemplaire) && (exem.NoUtilisateur ==
                        utilDao.Find(new Utilisateur { NomUtilisateur = id }).FirstOrDefault().NoUtilisateur)).FirstOrDefault();
                    // On lui donnera le dvd dans BDD
                    if (empF != null)
                    {
                        System.Diagnostics.Debug.WriteLine("entre");
                        empF.DateEmprunt = DateTime.Now;
                        empruntFilmDao.Save(empF);
                    }
                    else
                    {
                        empruntFilmDao.Save(new EmpruntFilm { NoExemplaire = intExemplaire, NoUtilisateur = utilDao.Find(new Utilisateur { NomUtilisateur = id }).FirstOrDefault().NoUtilisateur, DateEmprunt = DateTime.Now });
                    }
                }
                btnConfirmerAppropriation.Visible = false;
                AppropriationPour.Visible = false;
                lblAppropriation.Visible = false;
            }
            else if (Page.RouteData.Values["noExemp"] != null && !Page.RouteData.Values["noExemp"].ToString().Trim().Equals(""))
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "appropriation", "confirmerAppropriation()", true);
                btnConfirmerAppropriation.Visible = true;
                lblAppropriation.Visible = true;
                AppropriationPour.Visible = true;
                System.Diagnostics.Debug.WriteLine("TARG : " + target.ToString() + " ARG : " + argument.ToString());
                noExemp = int.Parse(Page.RouteData.Values["noExemp"].ToString().Trim());
            }

            
        }
    }

    protected void ApercuCourriel(object sender, EventArgs e)
    {
        IList<Utilisateur> utils = Persistance.RecupererUtilisateursAyantPreferences(4, "1");
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
        Context.Items.Add("Objet", string.Format("{0} a changé de mains", TitreFrancais.Text));
        Context.Items.Add("Contenu", string.Format("Le DVD intitulé {0} a été approprié par {1}", TitreFrancais.Text, Securite.UtilisateurCourant.NomUtilisateur));

        Server.Transfer("~/Pages/ApercuCourriel.aspx", true);
    }
}