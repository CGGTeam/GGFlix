using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public partial class Pages_Connexion : System.Web.UI.Page
{
    private readonly GenericDao<Utilisateur> _utilDao = Persistance.GetDao<Utilisateur>();

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Validate();
        divErreurs.Visible = !Page.IsValid;
        bool deconnexion = Request["deconnexion"] != null;
        divDeconnexion.Visible = deconnexion;
    }

    protected void connexion(object sender, EventArgs e)
    {
        string nomUtil =  tbEmail.Value;
        string motPasse = tbPassword.Text;

        if (Authenticate(nomUtil, motPasse))
        {
            var values = new RouteValueDictionary();
            values.Add("page", 1);
            Response.RedirectToRoute("CatalogueRoute", values);
        }
    }

    private bool Authenticate(string username, string password)
    {
        try
        {
            bool authSuccess = _utilDao.Find(new Utilisateur {NomUtilisateur = username, MotPasse = int.Parse(password)})
                                   .Count > 0;

            if (authSuccess)
            {
                FormsAuthentication.SetAuthCookie(username, false);

                divErreurs.Visible = false;
            }
            else
            {
                divErreurs.Visible = true;
                lblErreur.Text = "Nom d'utilisateur ou mot de passe invalide.";
            }

            return authSuccess;
        }
        catch (FormatException)
        {
            divErreurs.Visible = true;
            lblErreur.Text = "Mot de passe doit être un nombre";

            return false;
        }
    }
}