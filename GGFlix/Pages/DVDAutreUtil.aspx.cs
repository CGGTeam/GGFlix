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
    private String id = "admin";
    protected void Page_Load(object sender, EventArgs e)
    {
        Utilisateur currentUser = (Utilisateur) utilDao.Find(new Utilisateur { NomUtilisateur = id });

        IList<Utilisateur> lstUtilisateurs = utilDao.FindAll();
        ddlUtilisateur.Items.Clear();
        foreach(Utilisateur util in lstUtilisateurs)
        {
            if(util != currentUser)
            {
                ListItem item = new ListItem();
                item.Value = util.NoUtilisateur.ToString();
                item.Text = util.NomUtilisateur;
                ddlUtilisateur.Items.Add(item);
            }
        }

    }
}