using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Connexion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void connexion(object sender, EventArgs e)
    {
        string nomUtil =  tbEmail.Value;
        string motPasse = tbPassword.Text;

        if (nomUtil == "admin" && motPasse == "admin")
        {
            Response.RedirectToRoute("AccueilRoute");
        }
    }
}