using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_EnvoiCourriel : System.Web.UI.Page
{
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<ValeurPreference> valeurPrefDao = Persistance.GetDao<ValeurPreference>();
    Utilisateur currentUser = null;
    int noUtil = -1;
    string username = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        username = HttpContext.Current.User.Identity.Name;
        if (!username.Trim().Equals(""))
        {
            Utilisateur utilEnvoyer = utilDao.Find(new Utilisateur { NomUtilisateur = username })[0];
            tbDe.Text = utilEnvoyer.Courriel;

        }
        noUtil = Convert.ToInt32(Page.RouteData.Values["id"]);
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = username })[0];
        if (noUtil > 0)
        {
            Utilisateur utilRecevoir = utilDao.Find(new Utilisateur { NoUtilisateur = noUtil })[0];
            tbA.Text = utilRecevoir.Courriel;
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

    protected void chClicked(object sender, EventArgs e)
    {
        if (chTous.Checked)
        {
            tbA.Text = "Tous";
            tbA.ReadOnly = true;
        }
        else
        {
            tbA.Text = "";
            tbA.ReadOnly = false;
        }
    }

    protected void Envoyer(object sender, EventArgs e)
    {
        if (!IsValid) return;
        Context.Items.Add("A", tbA.Text);
        Context.Items.Add("De", tbDe.Text);
        Context.Items.Add("Objet", tbObjet.Text);
        Context.Items.Add("Contenu", tbTexte.Value);

        Server.Transfer("~/Pages/ApercuCourriel.aspx", true);
    }

    protected void VerifierA(object source, ServerValidateEventArgs args)
    {
        if (chTous.Checked) return;

        string[] courriels = tbA.Text.Split(new []{';'});

        try
        {
            foreach (var courriel in courriels)
            {
                new MailAddress(courriel);
            }
        }
        catch (FormatException)
        {
            args.IsValid = false;
        }
    }
}