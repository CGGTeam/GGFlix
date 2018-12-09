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
    private GenericDao<Langue> langueDao = Persistance.GetDao<Langue>();
    private GenericDao<Format> formatDao = Persistance.GetDao<Format>();
    int noExemp;
    protected void Page_Load(object sender, EventArgs e)
    {
        ClientScript.GetPostBackEventReference(this, string.Empty);
        intDVD = Convert.ToInt32(Page.RouteData.Values["id"]);
        intExemplaire = Convert.ToInt32(Page.RouteData.Values["noExemp"]);
        if (Page.RouteData.Values["idUtil"] != null && (!Page.RouteData.Values["idUtil"].ToString().Trim().Equals("")&& !Page.RouteData.Values["idUtil"].ToString().Trim().Substring(0,2).Equals("N-")))
        {
            string target = Request["__EVENTTARGET"].ToString();
            string argument = Request["__EVENTARGUMENT"].ToString();

            if (target != null && argument.Split(':')[0].Equals("Approprier"))
            {
                String id = HttpContext.Current.User.Identity.Name;

                EmpruntFilm empF = empruntFilmDao.FindAll().Where(exem => (exem.NoExemplaire == intExemplaire) && (exem.NoUtilisateur ==
                    utilDao.Find(new Utilisateur { NomUtilisateur = id }).FirstOrDefault().NoUtilisateur)).FirstOrDefault();
                // On lui donnera le dvd dans BDD
                if (empF != null)
                {
                    System.Diagnostics.Debug.WriteLine("entre");
                    empF.DateEmprunt = DateTime.Now;
                    empruntFilmDao.Save(empF);
                }
                else {
                    empruntFilmDao.Save(new EmpruntFilm { NoExemplaire = intExemplaire, NoUtilisateur =utilDao.Find(new Utilisateur { NomUtilisateur = id }).FirstOrDefault().NoUtilisateur,DateEmprunt=DateTime.Now });
                }

            } else if (target != null && argument.Split(':')[0].Equals("Retrait")) {

            }
            else if (Page.RouteData.Values["noExemp"] != null && !Page.RouteData.Values["noExemp"].ToString().Trim().Equals(""))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "appropriation", "confirmerAppropriation()", true);
                System.Diagnostics.Debug.WriteLine("TARG : " + target.ToString() + " ARG : " + argument.ToString());
                noExemp = int.Parse(Page.RouteData.Values["noExemp"].ToString().Trim());
            }

            System.Diagnostics.Debug.WriteLine("TARG : " + target.ToString() + " ARG : " + argument.ToString());
        }
        Film currentFilm = filmDao.Find(new Film { NoFilm = intDVD })[0];

        AnneeSortie.Text = currentFilm.AnneeSortie.ToString();
        if (currentFilm.ImagePochette.ToString().Trim().Length==0)
        {
            imageFilm.ImageUrl = "/Static/img/CD-512.png";
        }
        else{ 
            imageFilm.ImageUrl = "/Static/img/"+currentFilm.ImagePochette;
        }
        if (currentFilm.Categorie != null)
        {
            categorieddl.SelectedIndex = int.Parse(currentFilm.Categorie.ToString());
        }
        DerniereMiseJourLe.Text = currentFilm.DateMAJ.ToString();
        DerniereMiseJourPar.Text = currentFilm.NoUtilisateurMAJ.ToString();
        DescriptionSupplementDispo.SelectedIndex = int.Parse(currentFilm.NoUtilisateurMAJ.ToString());
        DureeFilm.Text = currentFilm.DureeMinutes.ToString();
        if (currentFilm.FilmOriginal!=null)
        {
            DVDOriginal.Checked = currentFilm.FilmOriginal.Value;
        }
        Resume.Text = currentFilm.Resume;
        if (currentFilm.NoProducteur != null){
        NomProducteur.Text = prodDao.Find(new Producteur { NoProducteur = currentFilm.NoProducteur.Value })[0].Nom;
        }
        if (currentFilm.NoRealisateur != null)
        {
            NomRealisateur.Text = realDao.Find(new Realisateur { NoRealisateur = currentFilm.NoRealisateur.Value })[0].Nom;
        }
        foreach (FilmActeur filmActeur in actFilmDao.FindAll().Where(acteur => acteur.NoFilm == currentFilm.NoFilm).ToList()) {
            NomActeurs.Items.Add(actDao.Find(new Acteur { NoActeur = filmActeur.NoActeur })[0].Nom);
        }
        foreach(FilmsSousTitres sousTitres in sTitreDao.FindAll().Where(film => film.NoFilm == currentFilm.NoFilm).ToList())
        {
            SousTitre.Items.Add(soustitreDao.Find(new SousTitre { NoSousTitre = sousTitres.NoSousTitre })[0].LangueSousTitre);
        }
        TitreFrancais.Text = currentFilm.TitreFrancais;
        TitreOriginal.Text = currentFilm.TitreOriginal;
        Proprietaire.Text= utilDao.Find(new Utilisateur { NoUtilisateur = exemDao.Find(new Exemplaire {NoExemplaire=intExemplaire}).FirstOrDefault().NoUtilisateurProprietaire})[0].NomUtilisateur;
        Emprunteur.Text = utilDao.Find(new Utilisateur { NoUtilisateur = empruntFilmDao.Find(new EmpruntFilm { NoExemplaire = intExemplaire }).OrderByDescending(v => v.DateEmprunt).First().NoUtilisateur })[0].NomUtilisateur;
        if (currentFilm.VersionEtendue != null) {
            VersionEtendue.Checked = currentFilm.VersionEtendue.Value;
        }

        /*VisibleTous.Checked = currentFilm*/
        foreach (Format form in formatDao.FindAll().Where(film => film.NoFormat == currentFilm.Format).ToList()) {
            if (form != null)
            {
                txtFormat.Text = form.Description;
            }
        }
        
        foreach (FilmsLangue filmLangue in filmLangueDao.FindAll().Where(exempl => exempl.NoFilm.Equals(intDVD)).ToList())
        {
            if (filmLangue != null)
            txtLangue.Text = langueDao.Find(new Langue { NoLangue = filmLangue.NoLangue })[0].DescLangue;
        }
        //tbNbDisques.Text = currentFilm */

    }
}