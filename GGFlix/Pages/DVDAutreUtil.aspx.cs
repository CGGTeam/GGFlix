﻿using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DVDAutreUtil : System.Web.UI.Page
{
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<Exemplaire> exemDao = Persistance.GetDao<Exemplaire>();
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<EmpruntFilm> empruntFilmDao = Persistance.GetDao<EmpruntFilm>();
    private GenericDao<ValeurPreference> valeurPrefDao = Persistance.GetDao<ValeurPreference>();
    private String id = "";
    Utilisateur currentUser = null;
    int numPage = -1;
    int nbPage = -1;
    int ddlSelect = -1;
    int ddlSelectedValue = -1;
    int maxPage = 10;

    protected void Page_Load(object sender, EventArgs e)
    {
        numPage = Convert.ToInt32(Page.RouteData.Values["page"]);
        if (Page.RouteData.Values["indexDdl"] == null ||!int.TryParse(Page.RouteData.Values["indexDdl"].ToString(),out ddlSelect))
        {
            ddlSelect = 0;
        }
        id = HttpContext.Current.User.Identity.Name;
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
        if (!id.Trim().Equals(""))
        {
            creerSideBar(sender, e);
            creerAffichage(sender, e);
        }
        else
        {
            Response.Redirect("~/Pages/Connexion");
        }
        List<ValeurPreference> laValeurImageBackground = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(6)).ToList();
        List<ValeurPreference> laValeurCouleurFond = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(1)).ToList();
        if (laValeurImageBackground.Count > 0 && laValeurImageBackground.First().Valeur != "")
        {
            MainContent.Attributes.Add("style", " background-image: url('" + "/Static/img/" + laValeurImageBackground.First().Valeur + "');");
            MainContent.Style.Add("background-size", "contain");
        }
        else
        {
            if (laValeurCouleurFond.Count > 0)
            {
                MainContent.Attributes.Add("style", "background-color:" + laValeurCouleurFond.First().Valeur);
            }

        }

        List<ValeurPreference> laValeurCouleurTexte = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(2)).ToList();
        if (laValeurCouleurTexte.Count > 0)
        {
            MainContent.Style.Add("color", laValeurCouleurTexte.First().Valeur);
        }



    }
    protected void creerSideBar(object sender, EventArgs e)
    {
        try
        {
            panelSideBar.Controls.Clear();
            panelSideBar.Attributes.Add("margin-left","10px");
            Label lblDdl = new Label();
            lblDdl.Text = "DVD de l'utilisateur";
            panelSideBar.Controls.Add(lblDdl);
            panelSideBar.Controls.Add(new LiteralControl("<br />"));
            DropDownList ddlUtil = new DropDownList();
            ddlUtil.ID = "ddlUtilisateur";

            IList<Utilisateur> lstUtilisateurs = utilDao.FindAll();
            ddlUtil.Items.Clear();
            foreach (Utilisateur util in lstUtilisateurs)
            {
                if (!util.NomUtilisateur.Equals(currentUser.NomUtilisateur) && !util.NomUtilisateur.Trim().Equals("admin"))
                {
                    ListItem item = new ListItem();
                    item.Value = util.NoUtilisateur.ToString();
                    item.Text = util.NomUtilisateur;
                    ddlUtil.Items.Add(item);
                }
            }
            ddlUtil.SelectedIndex = ddlSelect;
            ddlSelectedValue = int.Parse(ddlUtil.SelectedValue);
            ddlUtil.AutoPostBack = true;
            ddlUtil.Width = 260;
            ddlUtil.Height = 25;
            ddlUtil.SelectedIndexChanged += new EventHandler(creerAffichage);
            panelSideBar.Controls.Add(ddlUtil);

        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.ToString());
        }
    }
    //Utilisateur utilSelect = utilDao.Find(new Utilisateur { NoUtilisateur = int.Parse(ddlUtilisateur.SelectedValue), NomUtilisateur = ddlUtilisateur.Text })[0];
    protected void creerAffichage(object sender, EventArgs e)
    {
        try
        {

            //On récupère l'utilisateur choisi
            if (sender.GetType().Name.Equals("DropDownList"))
            {
                DropDownList ddlUtilisateur = (DropDownList)sender;
                if (ddlUtilisateur != null)
                {
                    ddlSelect = ddlUtilisateur.SelectedIndex;
                    ddlSelectedValue = int.Parse(ddlUtilisateur.SelectedValue);
                }

            }
            int i = 0;
            panelAffichage.Controls.Clear();
            Panel panel = panelAffichage;                                                                               // Panneau où j'affiche l'info
            List<Exemplaire> lstExemp = exemDao.FindAll().Where(v => v.NoUtilisateurProprietaire == ddlSelectedValue).OrderBy(v => filmDao.Find(new Film { NoFilm = int.Parse(v.NoExemplaire.ToString().Substring(0, 6)) })[0].TitreFrancais).ToList();
            List<ValeurPreference> lesValeursPrefs = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(7)).ToList();

            if (lesValeursPrefs.Count > 0)
            {
                maxPage = int.Parse(lesValeursPrefs.First().Valeur);
            }
            int nbPagePrec = numPage - 1;
            decimal page = decimal.Parse(lstExemp.Count().ToString()) / decimal.Parse(maxPage.ToString());
            nbPage = int.Parse(Math.Ceiling(page).ToString());
            if (nbPagePrec * maxPage < lstExemp.Count())                                                                   // On vérifie que la page devrait exister (Pas dépasser le max de DVD)
            {
                for (int j = nbPagePrec * maxPage; j < lstExemp.Count() && i < maxPage; j++, i++)
                {

                    int noExemp = int.Parse(lstExemp[j].NoExemplaire.ToString());
                    Film film = filmDao.Find(new Film { NoFilm = int.Parse(lstExemp[j].NoExemplaire.ToString().Substring(0, 6)) })[0];
                    List<EmpruntFilm> lesEmprunts = empruntFilmDao.FindAll().Where(c => c.NoExemplaire.Equals(lstExemp[j].NoExemplaire)).OrderByDescending(c => c.DateEmprunt).ToList();
                    Utilisateur util = utilDao.Find(new Utilisateur { NoUtilisateur = lesEmprunts.First().NoUtilisateur })[0];

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
                    btnDonnees.PostBackUrl = "~/DVD/" + film.NoFilm.ToString() + "/N-" + id + "/" + lstExemp[j].NoExemplaire; ;
                    panBouton.Controls.Add(btnDonnees);
                    panBouton.Controls.Add(new LiteralControl("<br />"));

                    if (util.NoUtilisateur != currentUser.NoUtilisateur && currentUser.TypeUtilisateur != "A")
                    {

                        Button btnMessage = new Button();
                        btnMessage.CssClass = "btn btn-warning btn-primary";
                        btnMessage.Text = "Envoi un courriel à celui qui l'a en main";
                        btnMessage.PostBackUrl = "~/Messagerie/" + util.NoUtilisateur+"/courrielEnMain";
                        panBouton.Controls.Add(btnMessage);
                        panBouton.Controls.Add(new LiteralControl("<br />"));

                        Button btnAppropriation = new Button();
                        btnAppropriation.CssClass = "btn btn-danger btn-primary";
                        btnAppropriation.Text = "S'approprier ce DVD";
                        btnAppropriation.PostBackUrl = "~/DVD/" + film.NoFilm.ToString() + "/" + id + "/" + lstExemp[j].NoExemplaire;
                        panBouton.Controls.Add(btnAppropriation);
                        panRow.Controls.Add(panBouton);
                        panel.Controls.Add(panRow);
                        panel.Controls.Add(new LiteralControl("<hr />"));

                        if (currentUser.TypeUtilisateur.Equals("S"))
                        {
                            panBouton.Controls.Add(new LiteralControl("<br />"));
                            Button btnMod = new Button();
                            btnMod.CssClass = "btn btn-warning btn-primary";
                            btnMod.Text = "Modification des données existantes";
                            btnMod.PostBackUrl = "~/modifDVD/" + film.NoFilm.ToString();
                            panBouton.Controls.Add(btnMod);
                            panBouton.Controls.Add(new LiteralControl("<br />"));

                            Button btnSupprimer = new Button();
                            btnSupprimer.CssClass = "btn btn-danger btn-primary";
                            btnSupprimer.Text = "Supprimer";
                            btnSupprimer.PostBackUrl = "~/DVDSuppression/" + film.NoFilm.ToString() + "/" + currentUser.NomUtilisateur.ToString().Trim() + "/" + lstExemp[j].NoExemplaire.ToString();
                            panBouton.Controls.Add(btnSupprimer);

                        }
                    }
                    else
                    {
                        panBouton.Controls.Add(new LiteralControl("<br />"));
                        Button btnMod = new Button();
                        btnMod.CssClass = "btn btn-warning btn-primary";
                        btnMod.Text = "Modification des données existantes";
                        btnMod.PostBackUrl = "~/modifDVD/" + film.NoFilm.ToString();
                        panBouton.Controls.Add(btnMod);
                        panBouton.Controls.Add(new LiteralControl("<br />"));

                        Button btnSupprimer = new Button();
                        btnSupprimer.CssClass = "btn btn-danger btn-primary";
                        btnSupprimer.Text = "Supprimer";
                        btnSupprimer.PostBackUrl = "~/DVDSuppression/" + film.NoFilm.ToString() + "/" + currentUser.NomUtilisateur.ToString().Trim() + "/" + lstExemp[j].NoExemplaire.ToString();
                        panBouton.Controls.Add(btnSupprimer);
                        panRow.Controls.Add(panBouton);
                        panel.Controls.Add(panRow);
                        panel.Controls.Add(new LiteralControl("<hr />"));
                    }


                }
            }
            else
            {
                // Redirection vers page max? ou vide
            }
            creerBasDePage(sender,e);
           
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.ToString());
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
                btnPage.PostBackUrl = "~/Utilisateur/" + i + "/" + ddlSelect;
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
            btnLast.PostBackUrl = "~/Utilisateur/" + nbPage + "/" + ddlSelect;
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
            btnNext.PostBackUrl = "~/Utilisateur/" + (numPage + 1) + "/" + ddlSelect;
            btnNext.CssClass = "btn btn-success";
        }
        btnNext.Text = ">";
        return btnNext;
    }

    private Button creationBtnPrec()
    {
        Button btnPrec = new Button();
        btnPrec.ID = "btnPrec";
        if(numPage == 1)
        {
            btnPrec.Enabled = false;
            btnPrec.CssClass = "btn btn-success page-item disabled";
        }
        else
        {
            btnPrec.PostBackUrl = "~/Utilisateur/" + (numPage - 1) + "/" + ddlSelect;
            btnPrec.CssClass = "btn btn-success";
        }
        btnPrec.Text = "<";
        return btnPrec;
    }
    
    private Button creationBtnPremier()
    {
        Button btnPremier = new Button();
        btnPremier.ID = "btnPremier";
        if(numPage == 1)
        {
            btnPremier.Enabled = false;
            btnPremier.CssClass = "btn btn-success page-item disabled";
        }
        else
        {

            btnPremier.PostBackUrl = "~/Utilisateur/1/" + ddlSelect;
            btnPremier.CssClass = "btn btn-success";
        }
        btnPremier.Text = "|<";
        return btnPremier;
    }
}