using LibrairieBD.Dao;
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
    private String id = "admin";
    Utilisateur currentUser = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];

            IList<Utilisateur> lstUtilisateurs = utilDao.FindAll();
            ddlUtilisateur.Items.Clear();
            foreach (Utilisateur util in lstUtilisateurs)
            {
                if (!util.NomUtilisateur.Equals(currentUser.NomUtilisateur))
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
    //Utilisateur utilSelect = utilDao.Find(new Utilisateur { NoUtilisateur = int.Parse(ddlUtilisateur.SelectedValue), NomUtilisateur = ddlUtilisateur.Text })[0];
    protected void creerAffichage(object sender, EventArgs e)
    {
        try
        {
            int utilChoisi = int.Parse(ddlUtilisateur.SelectedValue);
            System.Diagnostics.Debug.WriteLine("VALUE == " + utilChoisi);
            int i = 0;
            panelAffichage.Controls.Clear();
            Panel panel = panelAffichage;                                                                               // Panneau où j'affiche l'info
            List<Exemplaire> lstExemp = exemDao.FindAll()
            // On choisi que les exemplaires en main de l'utilisateur sélectionné
            // Sinon v.NoUtilisateurProprietaire =
            .Where(v => empruntFilmDao.Find(new EmpruntFilm { NoExemplaire = v.NoExemplaire, NoUtilisateur = utilChoisi })[0].NoUtilisateur == utilChoisi).ToList();
            int maxPage = 10;                                                                                           // maxPage est la variable de configuration de l'utilisateur
            int numPage = 0;                                                                                            // numPage est le numéro de la page demande -1 (Pour avoir le total de DVD déjà affiché)
            System.Diagnostics.Debug.WriteLine("COUNT ==" + lstExemp.Count());
            if (numPage * maxPage < lstExemp.Count())                                                                   // On vérifie que la page devrait exister (Pas dépasser le max de DVD)
            {
                System.Diagnostics.Debug.WriteLine("DANS IF == " + utilChoisi);
                for (int j = numPage; j < lstExemp.Count() && i < maxPage; j++)
                {
                    Film film = filmDao.Find(new Film { NoFilm = int.Parse(lstExemp.ElementAt(j).NoExemplaire.ToString().Substring(0, 5)) })[0];

                    System.Diagnostics.Debug.WriteLine("DANS FOR == " + film.TitreOriginal);
                    // foreach (Exemplaire exp in lstExemp) if (i < maxPage)
                    //   {
                    //Premier DIV
                    Panel panRow = new Panel();
                    panRow.CssClass = "row";
                    panRow.Attributes.Add("margin-left", "5%");
                    panRow.Attributes.Add("margin-right", "5%");

                    //DIV Image de film
                    Panel panPoster = new Panel();
                    panPoster.CssClass = "col-xs-2 col-md-2";

                    Image imagePoster = new Image();
                    if (!film.ImagePochette.Trim().Equals(""))
                    {
                        imagePoster.ImageUrl = "/img/" + film.ImagePochette;
                    }
                    else
                    {
                        imagePoster.ImageUrl = "/img/block.jpg";
                    }
                    imagePoster.Attributes.Add("href", film.XTra);
                    imagePoster.CssClass = "img-responsive";
                    imagePoster.AlternateText = "Image du DVD affiché";

                    panPoster.Controls.Add(imagePoster);
                    panRow.Controls.Add(panPoster);

                    //DIV Information
                    Panel panInfo = new Panel();
                    panInfo.CssClass = "col-xs-4 col-md-6";
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
                    btnDonnees.CssClass = "btn btn-info btn-primary";
                    btnDonnees.Text = "Affichage des données détaillées";
                    btnDonnees.Attributes.Add("hrec", "/DVD/" + film.NoFilm);
                    panBouton.Controls.Add(btnDonnees);

                    Button btnMessage = new Button();
                    btnMessage.CssClass = "btn btn-warning btn-primary";
                    btnMessage.Text = "Envoi un courriel à celui qui l'a en main";
                    btnMessage.Attributes.Add("href", "/Messagerie/" + utilChoisi);
                    panBouton.Controls.Add(btnMessage);

                    Button btnAppropriation = new Button();
                    btnAppropriation.CssClass = "btn btn-danger btn-primary";
                    btnAppropriation.Text = "S'approprier ce DVD";
                    panBouton.Controls.Add(btnAppropriation);
                    panRow.Controls.Add(panBouton);
                    panel.Controls.Add(panRow);
                }
            }
            else
            {
                // Redirection vers page max? ou vide
            }

            //panel.Controls.Add();
            //return panel;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex.ToString());
        }
    }
}