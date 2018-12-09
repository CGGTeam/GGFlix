using System;
using System.Collections.Generic;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public partial class Pages_AjoutUtilisateur : System.Web.UI.Page
{
    private readonly GenericDao<Utilisateur> daoUtil = Persistance.GetDao<Utilisateur>();
    private readonly Utilisateur utilCourant = Securite.UtilisateurCourant;
    private int? id;

    protected void Page_Load(object sender, EventArgs e)
    {
        VerifierPermissions();

        if (Page.RouteData.Values["id"] != null)
        {
            id = (int)Page.RouteData.Values["id"];

            Utilisateur utilModifie = daoUtil.Find(new Utilisateur {NoUtilisateur = id}).Premier();
        }
    }

    protected void VerifierPermissions()
    {
        if (utilCourant.TypeUtilisateur != "A")
        {
            throw new HttpException((int)HttpStatusCode.Unauthorized, "Cette page est seulement accessible à l'administrateur");
        }

        pnOptionsAdmin.Visible = true;

        IList<TypeUtilisateur> typesUtilisateurs = Persistance.GetDao<TypeUtilisateur>().FindAll();
        foreach (var type in typesUtilisateurs)
        {
            ddlTypeUtilisateur.Items.Add(new ListItem(type.Description, type.IdTypeUtilisateur));
        }
    }
}