using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Entites;

public partial class Fragments_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
            Utilisateur utilisateurCourant = Securite.UtilisateurCourant;

            lblUser.Text = utilisateurCourant.NomUtilisateur;
    }
}
