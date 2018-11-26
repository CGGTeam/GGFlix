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
            currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
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
            Panel panel = panelAffichage;                                                                               // Panneau où j'affiche l'info

            IList<Exemplaire> lstExemp = exemDao.FindAll().Where(v => v.NoUtilisateurProprietaire == currentUser.NoUtilisateur).ToList();
            int maxPage = 10;
            int nbPagePrec = numPage - 1;
            decimal page = decimal.Parse(lstExemp.Count().ToString()) / decimal.Parse(maxPage.ToString());
            nbPage = int.Parse(Math.Ceiling(page).ToString());
            if (nbPagePrec * maxPage < lstExemp.Count())                                                                   // On vérifie que la page devrait exister (Pas dépasser le max de DVD)
            {
                for (int j = nbPagePrec; j < lstExemp.Count() && i < maxPage; j++, i++)
                {
                    System.Diagnostics.Debug.WriteLine("NOEXEMPLAIRE ==== " + lstExemp[j].NoExemplaire + " NOUTIL ==== " + currentUser.NoUtilisateur);
                    //EmpruntFilm empruntFilm = empruntFilmDao.Find(new EmpruntFilm { NoUtilisateur = ddlSelect, NoExemplaire = lstExemp[j].NoExemplaire })[0];
                    Film film = filmDao.Find(new Film { NoFilm = int.Parse(lstExemp[j].NoExemplaire.ToString().Substring(0, 6)) })[0];

                    //Premier DIV
                    Panel panRow = new Panel();
                    panRow.CssClass = "row";
                    panRow.Attributes.Add("margin-left", "5%");
                    panRow.Attributes.Add("margin-right", "5%");

                    //DIV Image de film
                    Panel panPoster = new Panel();
                    panPoster.CssClass = "col-xs-2 col-md-2";

                    ImageButton imagePoster = new ImageButton();
                    if (!film.ImagePochette.Trim().Equals(""))
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
                    btnDonnees.PostBackUrl = "~/DVD/" + film.NoFilm.ToString()+ "/N-" + currentUser.NoUtilisateur+"/"+ lstExemp[j].NoExemplaire.ToString();
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
        }
    }

    //Toujours appeler APRÈS créerAffichage
    protected void creerBasDePage(object sender, EventArgs e)
    {
        int nbPageMax = 5;
        Panel panBasDePage = panelBasDePage;
        panBasDePage.HorizontalAlign = HorizontalAlign.Center;
        //Première page
        if (numPage == 1)
        {
            // btnPremier
            Button btnPremier = new Button();
            btnPremier.ID = "btnPremier";
            btnPremier.Enabled = false;
            btnPremier.CssClass = "btn btn-success page-item disabled";
            btnPremier.Text = "|<";
            panBasDePage.Controls.Add(btnPremier);

            //btnLast
            Button btnPrec = new Button();
            btnPrec.ID = "btnPrec";
            btnPrec.Enabled = false;
            btnPrec.CssClass = "btn btn-success page-item disabled";
            btnPrec.Text = "<";
            panBasDePage.Controls.Add(btnPrec);
            //btnPage
            for (int i = 1; i < 6; i++)
            {
                Button btnPage = new Button();
                btnPage.ID = "btnPage" + i;

                if (i == 1 || i > nbPage)
                {
                    btnPage.Enabled = false;
                    btnPage.CssClass = "btn btn-success page-item active";
                }
                else
                {
                    btnPage.PostBackUrl = "~/Utilisateur/" + i;
                    btnPage.CssClass = "btn btn-success";
                }
                btnPage.Text = "Page " + i;
                panBasDePage.Controls.Add(btnPage);
            }
            //btnNext
            Button btnNext = new Button();
            btnNext.ID = "btnNext";
            if (nbPage == 1)
            {
                btnNext.Enabled = false;
            }
            else
            {
                btnNext.PostBackUrl = "~/Utilisateur/" + (numPage + 1);
            }
            btnNext.CssClass = "btn btn-success";
            btnNext.Text = ">";
            panBasDePage.Controls.Add(btnNext);

            //btnLast
            Button btnLast = new Button();
            btnLast.ID = "btnLast";

            if (nbPage == 1)
            {
                btnLast.Enabled = false;
            }
            else
            {
                btnLast.PostBackUrl = "~/Utilisateur/" + nbPage;
            }
            btnLast.CssClass = "btn btn-success";
            btnLast.Text = ">|";
            panBasDePage.Controls.Add(btnLast);

        }
        //Deuxième page
        else if (numPage == 2)
        {
            //btnPremier
            Button btnPremier = new Button();
            btnPremier.ID = "btnPremier";
            btnPremier.PostBackUrl = "~/Utilisateur/1";
            btnPremier.CssClass = "btn btn-success";
            btnPremier.Text = "|<";
            panBasDePage.Controls.Add(btnPremier);

            //btnLast
            Button btnPrec = new Button();
            btnPrec.ID = "btnPrec";
            btnPrec.PostBackUrl = "~/Utilisateur/" + (numPage - 1);
            btnPrec.CssClass = "btn btn-success";
            btnPrec.Text = "<";
            panBasDePage.Controls.Add(btnPrec);


            //btnPage
            for (int i = 1; i < 6; i++)
            {
                Button btnPage = new Button();
                btnPage.ID = "btnPage" + i;
                if (i == 2 || i > nbPage)
                {
                    btnPage.Enabled = false;
                    btnPage.CssClass = "btn btn-success page-item active";
                }
                else
                {
                    btnPage.PostBackUrl = "~/Utilisateur/" + i;
                    btnPage.CssClass = "btn btn-success";
                }
                btnPage.Text = "Page " + i;
                panBasDePage.Controls.Add(btnPage);
            }
            //btnNext
            Button btnNext = new Button();
            btnNext.ID = "btnNext";
            if (nbPage == 2)
            {
                btnNext.Enabled = false;
            }
            else
            {
                btnNext.PostBackUrl = "~/Utilisateur/" + (numPage + 1);
            }
            btnNext.CssClass = "btn btn-success";
            btnNext.Text = ">";
            panBasDePage.Controls.Add(btnNext);

            //btnLast
            Button btnLast = new Button();
            btnLast.ID = "btnLast" + nbPage;

            if (nbPage == 2)
            {
                btnLast.Enabled = false;
            }
            else
            {
                btnLast.PostBackUrl = "~/Utilisateur/" + nbPage;
            }
            btnLast.CssClass = "btn btn-success";
            btnLast.Text = ">|";
            panBasDePage.Controls.Add(btnLast);

        }
        //Avant-dernière page
        else if (numPage == nbPage - 1)
        {
            //btnPremier
            Button btnPremier = new Button();
            btnPremier.ID = "btnPremier";
            btnPremier.PostBackUrl = "~/Utilisateur/1";
            btnPremier.CssClass = "btn btn-success";
            btnPremier.Text = "|<";
            panBasDePage.Controls.Add(btnPremier);

            //btnLast
            Button btnPrec = new Button();
            btnPrec.ID = "btnPrec";
            btnPrec.PostBackUrl = "~/Utilisateur/" + (numPage - 1);
            btnPrec.CssClass = "btn btn-success";
            btnPrec.Text = "<";
            panBasDePage.Controls.Add(btnPrec);

            //btnPage
            for (int i = nbPage - 2; i < nbPage + 2; i++)
            {
                Button btnPage = new Button();
                btnPage.ID = "btnPage" + i;
                btnPage.PostBackUrl = "~/Utilisateur/" + i;
                if (i == numPage || i > nbPage)
                {
                    btnPage.Enabled = false;
                    btnPage.CssClass = "btn btn-success page-item active";
                }
                else
                {
                    btnPage.PostBackUrl = "~/Utilisateur/" + i;
                    btnPage.CssClass = "btn btn-success";
                }
                btnPage.Text = "Page " + i;
                panBasDePage.Controls.Add(btnPage);
            }
            //btnNext
            Button btnNext = new Button();
            btnNext.ID = "btnNext";
            btnNext.PostBackUrl = "~/Utilisateur/" + (numPage + 1);
            btnNext.CssClass = "btn btn-success";
            btnNext.Text = ">";
            panBasDePage.Controls.Add(btnNext);

            //btnLast
            Button btnLast = new Button();
            btnLast.ID = "btnLast";
            btnLast.PostBackUrl = "~/Utilisateur/" + nbPage;
            btnLast.CssClass = "btn btn-success";
            btnLast.Text = ">|";
            panBasDePage.Controls.Add(btnLast);
        }
        //Dernière page
        else if (numPage == nbPage)
        {
            //btnPremier
            Button btnPremier = new Button();
            btnPremier.ID = "btnPremier";
            btnPremier.PostBackUrl = "~/Utilisateur/1";
            btnPremier.CssClass = "btn btn-success";
            btnPremier.Text = "|<";
            panBasDePage.Controls.Add(btnPremier);

            //btnLast
            Button btnPrec = new Button();
            btnPrec.ID = "btnPrec";
            btnPrec.PostBackUrl = "~/Utilisateur/" + (numPage - 1);
            btnPrec.CssClass = "btn btn-success";
            btnPrec.Text = "<";
            panBasDePage.Controls.Add(btnPrec);

            //btnPage
            if (nbPage < 5)
                for (int j = 0; j < nbPage; j++)
                {
                    int i = nbPage - j;
                    Button btnPage = new Button();
                    btnPage.ID = "btnPage" + i;
                    btnPage.PostBackUrl = "~/Utilisateur/" + i;
                    if (i == numPage || i > nbPage)
                    {
                        btnPage.Enabled = false;
                        btnPage.CssClass = "btn btn-success page-item active";
                    }
                    else
                    {
                        btnPage.PostBackUrl = "~/Utilisateur/" + i;
                        btnPage.CssClass = "btn btn-success";
                    }
                    btnPage.Text = "Page " + i;
                    panBasDePage.Controls.Add(btnPage);
                }
            //btnNext
            Button btnNext = new Button();
            btnNext.ID = "btnNext";
            btnNext.Enabled = false;
            btnNext.CssClass = "btn btn-success";
            btnNext.Text = ">";
            panBasDePage.Controls.Add(btnNext);

            //btnLast
            Button btnLast = new Button();
            btnLast.ID = "btnLast";
            btnLast.Enabled = false;
            btnLast.CssClass = "btn btn-success";
            btnLast.Text = ">|";
            panBasDePage.Controls.Add(btnLast);
        }
        //Le reste
        else
        {

        }
    }
}