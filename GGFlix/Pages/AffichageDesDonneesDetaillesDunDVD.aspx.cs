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
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<Producteur> prodDao = Persistance.GetDao<Producteur>();
    private GenericDao<Realisateur> realDao = Persistance.GetDao<Realisateur>();
    private GenericDao<Acteur> actDao = Persistance.GetDao<Acteur>();
    private GenericDao<FilmActeur> actFilmDao = Persistance.GetDao<FilmActeur>();
    private GenericDao<FilmsSousTitres> sTitreDao = Persistance.GetDao<FilmsSousTitres>();
    private GenericDao<SousTitre> soustitreDao = Persistance.GetDao<SousTitre>();
    private GenericDao<Exemplaire> exemDao = Persistance.GetDao<Exemplaire>();
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();

    int noExemp;
    protected void Page_Load(object sender, EventArgs e)
    {
        ClientScript.GetPostBackEventReference(this, string.Empty);
        intDVD = Convert.ToInt32(Page.RouteData.Values["id"]);
        if(Page.RouteData.Values["idUtil"] != null && (!Page.RouteData.Values["idUtil"].ToString().Trim().Equals("")&& !Page.RouteData.Values["idUtil"].ToString().Trim().Substring(0,2).Equals("N-")))
        {
            string target = Request["__EVENTTARGET"];
            string argument = Request["__EVENTARGUMENT"];

            if (target != null && target.Equals("txtConfirmRetour"))
            {
                System.Diagnostics.Debug.WriteLine("TARG : " + target.ToString() + " ARG : " + argument.ToString());
                // On lui donnera le dvd dans BDD
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
        foreach (Exemplaire filmActeur in exemDao.FindAll().Where(exempl => exempl.NoExemplaire.ToString().Substring(0, 5).Equals(currentFilm.NoFilm.Value.ToString())).ToList())
        {
            Proprietaire.Text = utilDao.Find(new Utilisateur { NoUtilisateur = filmActeur.NoUtilisateurProprietaire })[0].NomUtilisateur;
        }

        /*Emprunteur.Text = currentFilm.*/
        if (currentFilm.VersionEtendue != null) {
            VersionEtendue.Checked = currentFilm.VersionEtendue.Value;
        }
        /*VisibleTous.Checked = currentFilm*/
        /*txtFormat.Items.Add = currentFilm
        foreach (Exemplaire filmActeur in exemDao.FindAll().Where(exempl => exempl.NoExemplaire.ToString().Substring(0, 5).Equals(currentFilm.NoFilm.Value.ToString())).ToList())
        {
            Proprietaire.Text = utilDao.Find(new Utilisateur { NoUtilisateur = filmActeur.NoUtilisateurProprietaire })[0].NomUtilisateur;
        }
        txtLangue.Text = currentFilm
        tbNbDisques.Text = currentFilm */

    }
}