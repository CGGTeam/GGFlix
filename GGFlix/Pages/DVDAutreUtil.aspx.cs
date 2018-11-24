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
    private String id = "";
    Utilisateur currentUser = null;
    int numPage = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        numPage = Convert.ToInt32(Page.RouteData.Values["id"]);
        id = HttpContext.Current.User.Identity.Name;
        if (!id.Trim().Equals(""))
        {
            if (!Page.IsPostBack)
            {
                currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];

                IList<Utilisateur> lstUtilisateurs = utilDao.FindAll();
                ddlUtilisateur.Items.Clear();
                foreach (Utilisateur util in lstUtilisateurs)
                {
                    if (!util.NomUtilisateur.Equals(currentUser.NomUtilisateur) && !util.NomUtilisateur.Trim().Equals("admin"))
                    {
                        ListItem item = new ListItem();
                        item.Value = util.NoUtilisateur.ToString();
                        item.Text = util.NomUtilisateur;
                        ddlUtilisateur.Items.Add(item);
                    }
                }
                creerAffichage(sender, e);
            }
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
            int utilChoisi = int.Parse(ddlUtilisateur.SelectedValue);
            int i = 0;
            panelAffichage.Controls.Clear();
            Panel panel = panelAffichage;                                                                               // Panneau où j'affiche l'info
            List<Exemplaire> lstExemp = exemDao.FindAll()
            // On choisi que les exemplaires du proprio sélectionné
            // Sinon voir dans empruntDao empruntFilmDao.Find(new EmpruntFilm { NoExemplaire = v.NoExemplaire, NoUtilisateur = utilChoisi }).Count>0
            .Where(v => v.NoUtilisateurProprietaire == utilChoisi).ToList();
            int maxPage = 10;
            int nbPagePrec = numPage - 1;
            if (nbPagePrec * maxPage < lstExemp.Count())                                                                   // On vérifie que la page devrait exister (Pas dépasser le max de DVD)
            {
                for (int j = nbPagePrec; j < lstExemp.Count() && i < maxPage; j++,i++)
                {
                    System.Diagnostics.Debug.WriteLine("NOEXEMPLAIRE ==== " + lstExemp[j].NoExemplaire + " NOUTIL ==== " + utilChoisi);
                    //EmpruntFilm empruntFilm = empruntFilmDao.Find(new EmpruntFilm { NoUtilisateur = utilChoisi, NoExemplaire = lstExemp[j].NoExemplaire })[0];
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
                    imagePoster.Attributes.Add("height", "208px" );
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
                    lblTitreFrancais.Text = "<h4><strong>" + film.TitreFrancais + "</strong></h4>";
                    lblTitreFrancais.CssClass = "product-name pb-5";
                    panInfo.Controls.Add(lblTitreFrancais);
                    panRow.Controls.Add(panInfo);

                    //DIV Bouton
                    Panel panBouton = new Panel();
                    panBouton.CssClass = "col-xs-6 col-md-4 btn-group-vertical";
                    panBouton.Attributes.Add("padding-top", "5px");

                    Button btnDonnees = new Button();
                    btnDonnees.ID = "DONNEE"+film.NoFilm.ToString();
                    btnDonnees.CssClass = "btn btn-info btn-primary";
                    btnDonnees.Text = "Affichage des données détaillées";
                    btnDonnees.PostBackUrl = "~/DVD/" + film.NoFilm.ToString();
                    panBouton.Controls.Add(btnDonnees);
                    panBouton.Controls.Add(new LiteralControl("<br />"));

                    Button btnMessage = new Button();
                    btnMessage.CssClass = "btn btn-warning btn-primary";
                    btnMessage.Text = "Envoi un courriel à celui qui l'a en main";
                    btnMessage.PostBackUrl = "~/Messagerie/" + lstExemp[j].NoUtilisateurProprietaire ;
                    panBouton.Controls.Add(btnMessage);
                    panBouton.Controls.Add(new LiteralControl("<br />"));

                    Button btnAppropriation = new Button();
                    btnAppropriation.CssClass = "btn btn-danger btn-primary";
                    btnAppropriation.Text = "S'approprier ce DVD";
                    panBouton.Controls.Add(btnAppropriation);
                    panRow.Controls.Add(panBouton);
                    panel.Controls.Add(panRow);
                    panel.Controls.Add(new LiteralControl("<hr />"));
                }
            }
            else
            {
                // Redirection vers page max? ou vide
            }
           
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.ToString());
        }
    }
}