using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public partial class Pages_Connexion : System.Web.UI.Page
{
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void connexion(object sender, EventArgs e)
    {
        string nomUtil =  tbEmail.Value;
        string motPasse = tbPassword.Text;

        if (credentialsAreValid(nomUtil, motPasse))
        {
            var values = new RouteValueDictionary();
            values.Add("page", 1);
            Response.RedirectToRoute("CatalogueRoute", values);
        }
    }

    private bool credentialsAreValid(string username, string password)
    {
        return utilDao.Find(new Utilisateur {NomUtilisateur = username, MotPasse = int.Parse(password)}).Count > 0;
    }
}