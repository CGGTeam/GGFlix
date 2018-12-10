using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AffichageDVDEnMain : System.Web.UI.Page
{
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<Exemplaire> exemDao = Persistance.GetDao<Exemplaire>();
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<EmpruntFilm> empruntFilmDao = Persistance.GetDao<EmpruntFilm>();
    private String id = "";
    Utilisateur currentUser = null;
    int numPage = -1;
    int nbPage = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        numPage = Convert.ToInt32(Page.RouteData.Values["id"]);
        id = HttpContext.Current.User.Identity.Name;
        
        if (!id.Trim().Equals(""))
        {
            currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id }).FirstOrDefault();
            IList<Exemplaire> lstExemp = exemDao.FindAll().Where(v => v.NoUtilisateurProprietaire == currentUser.NoUtilisateur).ToList();
            creerAffichage(sender, e);
        }
        else
        {
            // Page devrait crash
        }



    }
    //Utilisateur utilSelect = utilDao.Find(new Utilisateur { NoUtilisateur = int.Parse(ddlUtilisateur.SelectedValue), NomUtilisateur = ddlUtilisateur.Text })[0];
    protected void creerAffichage(object sender, EventArgs e)
    {
        try
        {
            int i = 0;
            panelAffichage.Controls.Clear();
            Panel panel = panelAffichage;
            // Panneau où j'affiche l'info
            List<Exemplaire> lstExemp = exemDao.FindAll().ToList();
            List<EmpruntFilm> lesEmprunts = new List<EmpruntFilm>();
            List<EmpruntFilm> lstEmpruntsCurrent = new List<EmpruntFilm>();
            for (int j = 0; j  < lstExemp.Count(); j++)
            {
                lesEmprunts = empruntFilmDao.FindAll().Where(c => c.NoExemplaire.Equals(lstExemp[j].NoExemplaire) && c.NoUtilisateur.Equals(currentUser.NoUtilisateur)).OrderByDescending(c => c.DateEmprunt).ToList();
                if(lesEmprunts.Count > 0)
                {
                    lstEmpruntsCurrent.Add(lesEmprunts.First());
                    Film film = filmDao.Find(new Film { NoFilm = int.Parse(lesEmprunts.First().NoExemplaire.ToString().Substring(0, 6)) })[0];
                   //Response.Write(" LE FILM " + film.TitreFrancais + "NOEXEMPLAIRE ==== " + lesEmprunts.First().NoExemplaire + " NOUTIL ==== " + currentUser.NoUtilisateur + "<br>");
                }
            }

            //Response.Write(lstEmpruntsCurrent.Count());

            //IList<EmpruntFilm> lstExemp = empruntFilmDao.FindAll().Where(v => (v.NoUtilisateur == currentUser.NoUtilisateur)).OrderBy(v=> filmDao.Find(new Film { NoFilm = int.Parse(v.NoExemplaire.ToString().Substring(0, 6)) })[0].TitreFrancais ).ToList();
            int maxPage = 10;
            int nbPagePrec = numPage - 1;
            //Response.Write(" LA PAGE " + nbPagePrec);
            decimal page = decimal.Parse(lstEmpruntsCurrent.Count().ToString()) / decimal.Parse(maxPage.ToString());
            nbPage = int.Parse(Math.Ceiling(page).ToString());
            if (nbPagePrec * maxPage < lstEmpruntsCurrent.Count())                                                                   // On vérifie que la page devrait exister (Pas dépasser le max de DVD)
            {
                for (int j = nbPagePrec * maxPage; j < lstEmpruntsCurrent.Count() && i < maxPage; j++, i++)
                {                  
                    Film film = filmDao.Find(new Film { NoFilm = int.Parse(lstEmpruntsCurrent[j].NoExemplaire.ToString().Substring(0, 6)) })[0];

                    //Premier DIV
                    Panel panRow = new Panel();
                    panRow.CssClass = "row";
                    panRow.Attributes.Add("margin-left", "5%");
                    panRow.Attributes.Add("margin-right", "5%");

                    //DIV Image de film
                    Panel panPoster = new Panel();
                    panPoster.CssClass = "col-xs-2 col-md-2";

                    ImageButton imagePoster = new ImageButton();
                    if (film.ImagePochette != null && !film.ImagePochette.Trim().Equals(""))
                    {
                        imagePoster.ImageUrl = "/Static/img/" + film.ImagePochette;
                    }
                    else
                    {
                        imagePoster.ImageUrl = "/Static/img/block.jpg";
                    }
                    imagePoster.Attributes.Add("href", film.XTra);
                    imagePoster.Attributes.Add("width", "140px");
                    imagePoster.Attributes.Add("height", "208px");
                    imagePoster.PostBackUrl = film.XTra;
                    imagePoster.CssClass = "img-responsive";
                    imagePoster.AlternateText = "Image du DVD affiché";

                    panPoster.Controls.Add(imagePoster);
                    panRow.Controls.Add(panPoster);

                    //DIV Information
                    Panel panInfo = new Panel();
                    panInfo.CssClass = "col-xs-4 col-md-6";
                    panInfo.Controls.Add(new LiteralControl("<br />"));
                    panInfo.Controls.Add(new LiteralControl("<br />"));
                    panInfo.Controls.Add(new LiteralControl("<br />"));

                    Label lblTitreFrancais = new Label();
                    int chiffre = j + 1;
                    lblTitreFrancais.Text = "<h4><strong>" + chiffre + " - " + film.TitreFrancais + "</strong></h4>";
                    lblTitreFrancais.CssClass = "product-name pb-5";
                    panInfo.Controls.Add(lblTitreFrancais);
                    panRow.Controls.Add(panInfo);

                    //DIV Bouton
                    Panel panBouton = new Panel();
                    panBouton.CssClass = "col-xs-6 col-md-4 btn-group-vertical";
                    panBouton.Attributes.Add("padding-top", "5px");

                    Button btnDonnees = new Button();
                    btnDonnees.ID = "DONNEE" + film.NoFilm.ToString();
                    btnDonnees.CssClass = "btn btn-info btn-primary";
                    btnDonnees.Text = "Affichage des données détaillées";
                    btnDonnees.PostBackUrl = "~/DVD/" + film.NoFilm.ToString()+ "/N-" + currentUser.NomUtilisateur.ToString().Trim()+"/"+ lstEmpruntsCurrent[j].NoExemplaire.ToString();
                    panBouton.Controls.Add(btnDonnees);
                    panBouton.Controls.Add(new LiteralControl("<br />"));

                    Button mtnModifierFilm = new Button();
                    mtnModifierFilm.CssClass = "btn btn-warning btn-primary";
                    mtnModifierFilm.Text = "Modification des données existantes";
                    mtnModifierFilm.PostBackUrl = "~/modifDVD/" + film.NoFilm.ToString();
                    panBouton.Controls.Add(mtnModifierFilm);
                    panBouton.Controls.Add(new LiteralControl("<br />"));

                    Button btnSupprimerFilm = new Button();
                    btnSupprimerFilm.CssClass = "btn btn-danger btn-primary";
                    btnSupprimerFilm.Text = "Suppression du film";
                    btnSupprimerFilm.PostBackUrl = "~/DVD/" + film.NoFilm.ToString() + "/" + currentUser.NomUtilisateur.ToString().Trim() + "/" + lstEmpruntsCurrent[j].NoExemplaire.ToString();
                    panBouton.Controls.Add(btnSupprimerFilm);
                    panRow.Controls.Add(panBouton);
                    panel.Controls.Add(panRow);
                    panel.Controls.Add(new LiteralControl("<hr />"));
                }
            }
            else
            {
                // Redirection vers page max? ou vide
            }
            creerBasDePage(sender, e);

        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.ToString());
            Response.Write(ex);
        }
    }

    //Toujours appeler APRÈS créerAffichage
    protected void creerBasDePage(object sender, EventArgs e)
    {
        panelBasDePage.Controls.Clear();
        Panel panBasDePage = panelBasDePage;
        panBasDePage.HorizontalAlign = HorizontalAlign.Center;
        // btnPremier
        panBasDePage.Controls.Add(creationBtnPremier());

        //btnPrec
        panBasDePage.Controls.Add(creationBtnPrec());

        int intNbPages = (numPage - 2) > 0 ? (numPage - 2) : 1;

        for (int i = intNbPages; i < (numPage + 3) && i <= nbPage; i++)
        {
            Button btnPage = new Button();
            btnPage.ID = "btnPage" + i;

            if (i == numPage || i > nbPage)
            {
                btnPage.Enabled = false;
                btnPage.CssClass = "btn btn-success page-item active";
            }
            else
            {
                btnPage.PostBackUrl = "~/MesDVD/" + i;
                btnPage.CssClass = "btn btn-success";
            }
            btnPage.Text = "Page " + i;
            panBasDePage.Controls.Add(btnPage);
        }
        //btnNext
        panBasDePage.Controls.Add(creationBtnNext());
        //btnLast
        panBasDePage.Controls.Add(creationBtnLast());
    }

    private Button creationBtnLast()
    {
        //btnLast
        Button btnLast = new Button();
        btnLast.ID = "btnLast";

        if (nbPage == numPage)
        {
            btnLast.Enabled = false;
            btnLast.CssClass = "btn btn-success page-item disabled";
        }
        else
        {
            btnLast.PostBackUrl = "~/MesDVD/" + nbPage;
            btnLast.CssClass = "btn btn-success";
        }

        btnLast.Text = ">|";


        return btnLast;
    }

    private Button creationBtnNext()
    {
        //btnNext
        Button btnNext = new Button();
        btnNext.ID = "btnNext";
        if (nbPage == numPage)
        {
            btnNext.Enabled = false;
            btnNext.CssClass = "btn btn-success page-item disabled";
        }
        else
        {
            btnNext.PostBackUrl = "~/MesDVD/" + (numPage + 1);
            btnNext.CssClass = "btn btn-success";
        }
        btnNext.Text = ">";
        return btnNext;
    }

    private Button creationBtnPrec()
    {
        Button btnPrec = new Button();
        btnPrec.ID = "btnPrec";
        if (numPage == 1)
        {
            btnPrec.Enabled = false;
            btnPrec.CssClass = "btn btn-success page-item disabled";
        }
        else
        {
            btnPrec.PostBackUrl = "~/MesDVD/" + (numPage - 1);
            btnPrec.CssClass = "btn btn-success";
        }
        btnPrec.Text = "<";
        return btnPrec;
    }

    private Button creationBtnPremier()
    {
        Button btnPremier = new Button();
        btnPremier.ID = "btnPremier";
        if (numPage == 1)
        {
            btnPremier.Enabled = false;
            btnPremier.CssClass = "btn btn-success page-item disabled";
        }
        else
        {

            btnPremier.PostBackUrl = "~/MesDVD/1";
            btnPremier.CssClass = "btn btn-success";
        }
        btnPremier.Text = "|<";
        return btnPremier;
    }
}