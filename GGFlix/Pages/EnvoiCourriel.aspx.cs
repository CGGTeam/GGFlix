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
        if (noUtil > 0)
        {
            Utilisateur utilRecevoir = utilDao.Find(new Utilisateur { NoUtilisateur = noUtil })[0];
            tbA.Text = utilRecevoir.Courriel;
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