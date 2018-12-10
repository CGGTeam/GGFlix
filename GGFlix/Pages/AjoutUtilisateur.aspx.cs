using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public partial class Pages_AjoutUtilisateur : System.Web.UI.Page
{
    private readonly GenericDao<Utilisateur> daoUtil = Persistance.GetDao<Utilisateur>();
    private readonly Utilisateur utilCourant = Securite.UtilisateurCourant;
    private Utilisateur utilModifie;
    private int? id;

    protected void Page_Load(object sender, EventArgs e)
    {
        pnErreurs.Visible = false;
        VerifierPermissions();

        tbMdeP1.Attributes["type"] = "password";
        tbMdeP2.Attributes["type"] = "password";

        if (Page.RouteData.Values["id"] != null)
        {
            id = int.Parse(Page.RouteData.Values["id"].ToString());
            utilModifie = daoUtil.Find(new Utilisateur {NoUtilisateur = id}).Premier();

            if (utilModifie == null)
            {
                throw new HttpException((int)HttpStatusCode.NotFound, "Utilisateur introuvable");
            }

            Page.Title = "Modification du compte de " + utilModifie.NomUtilisateur;

            if (IsPostBack) return;
            
            litMode.Text = "Modification";

            tbPrenom.Text = utilModifie.NomUtilisateur;
            tbCourriel1.Text = utilModifie.Courriel;
            tbCourriel2.Text = utilModifie.Courriel;
            tbMdeP1.Text = utilModifie.MotPasse.ToString();
            tbMdeP2.Text = utilModifie.MotPasse.ToString();
            ddlTypeUtilisateur.SelectedValue = utilModifie.TypeUtilisateur;
        }
        else if (!IsPostBack)
        {
            Page.Title = "Ajout d'un utilisateur";
            
            litMode.Text = "Ajout";
            ddlTypeUtilisateur.SelectedValue = "U";
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
            if (type.IdTypeUtilisateur == "A") continue;
            ddlTypeUtilisateur.Items.Add(new ListItem(type.Description, type.IdTypeUtilisateur));
        }
    }

    protected void ConfirmerAjout(object sender, EventArgs e)
    {
        Page.Validate();
        if (!Page.IsValid) return;
        if (utilModifie == null) utilModifie = new Utilisateur();
        if (!ValiderChampsUniques()) return;

        InitialiserChampsUtilisateur();
        daoUtil.Save(utilModifie);

        Response.RedirectToRoute("GestionUtilisateur");
    }

    private bool ValiderChampsUniques()
    {
        IList<Utilisateur> utilisateurs = daoUtil.FindAll();
        
        bool prenomExiste = utilModifie.NomUtilisateur != tbPrenom.Text && utilisateurs.Quelconque(u => u.NomUtilisateur.Trim() == tbPrenom.Text);
        bool courrielExiste = utilModifie.Courriel != tbCourriel1.Text && utilisateurs.Quelconque(u => u.Courriel.Trim() == tbCourriel1.Text);

        if (prenomExiste || courrielExiste)
        {
            AfficherErreurChampsUnique(prenomExiste, courrielExiste);
            
            return false;
        }

        return true;
    }

    private void AfficherErreurChampsUnique(bool prenomExiste, bool courrielExiste)
    {
        pnErreurs.Visible = true;

        string erreurs = prenomExiste ? "prénom" : "";
        erreurs += courrielExiste ? (prenomExiste ? " et ce " : "") + "courriel" : "";

        LitErreur.Text = "Erreur en " + (utilModifie == null ? "créant" : "modifiant") + " l'utilisateur. Il existe déjà un utilisateur avec ce " + erreurs + ".";
    }


    private void InitialiserChampsUtilisateur()
    {
        utilModifie.TypeUtilisateur = ddlTypeUtilisateur.SelectedValue;
        utilModifie.Courriel = tbCourriel1.Text;
        utilModifie.MotPasse = int.Parse(tbMdeP1.Text);
        utilModifie.NomUtilisateur = tbPrenom.Text;
    }

    protected void ValiderCourriel(object source, ServerValidateEventArgs args)
    {
        try
        {
            new MailAddress(args.Value);
        }
        catch (FormatException e)
        {
            args.IsValid = false;
        }
    }
}