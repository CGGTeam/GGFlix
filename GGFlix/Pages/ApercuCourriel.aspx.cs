using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_EnvoiCourriel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string a = Context.Items["A"].ToString();
            string de = Context.Items["De"].ToString();
            string objet = Context.Items["Objet"].ToString();
            string contenu = Context.Items["Contenu"].ToString();

            if (a == "Tous")
            {
                IList<Utilisateur> utilisateurs = Persistance.GetDao<Utilisateur>().FindAll();

                for (int i = 0; i < utilisateurs.Count; i++)
                {
                    tbA.Text += utilisateurs[i].Courriel;
                    if (i < utilisateurs.Count - 1)
                    {
                        tbA.Text += ";";
                    }
                }
            }

            tbDe.Text = de;
            tbObjet.Text = objet;
            tbTexte.Text = contenu;
        }
        catch (Exception)
        {
            Response.RedirectToRoute("MessagerieRoute");
        }
    }
}