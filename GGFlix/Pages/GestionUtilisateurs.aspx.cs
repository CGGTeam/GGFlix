using System;
using System.Collections.Generic;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public partial class GestionUtilisateurs : Page
{
    private readonly GenericDao<Utilisateur> daoUtil = Persistance.GetDao<Utilisateur>();
    private readonly Utilisateur utilCourant = Securite.UtilisateurCourant;
    private IList<TypeUtilisateur> typesUtilisateurs;


    protected void Page_Load(object sender, EventArgs e)
    {
        RecupererTypesUtilisateur();
        VerifierPermissions();
        AfficherUtilisateurs();
    }

    private void RecupererTypesUtilisateur()
    {
        GenericDao<TypeUtilisateur> daoTypes = Persistance.GetDao<TypeUtilisateur>();

        typesUtilisateurs = daoTypes.FindAll();
    }

    protected void VerifierPermissions()
    {
        if (utilCourant.TypeUtilisateur != "A")
        {
            throw new HttpException((int)HttpStatusCode.Unauthorized, "Cette page est seulement accessible à l'administrateur");
        }
    }

    protected void AfficherUtilisateurs()
    {
        IList<Utilisateur> utilisateurs = daoUtil.FindAll();

        foreach (var utilisateur in utilisateurs)
        {
            if (utilisateur.TypeUtilisateur == "A") continue;
            phUtilisateurs.Controls.Add(GenererRangeeUtilisateur(utilisateur));
        }
    }

    private TableRow GenererRangeeUtilisateur(Utilisateur utilisateur)
    {
        string descriptionType = typesUtilisateurs.Ou(t => t.IdTypeUtilisateur == utilisateur.TypeUtilisateur).Premier().Description;

        Button btnSupprimer = new Button { Text = "Supprimer", CssClass = "btn btn-danger" };
        btnSupprimer.Click += (sender, args) => Supprimer(utilisateur.NoUtilisateur);

        return new TableRow
        {
            Cells =
            {
                new TableHeaderCell
                {
                    Text = utilisateur.NoUtilisateur.GetValueOrDefault().ToString()
                },
                new TableCell
                {
                    Text = descriptionType,
                },
                new TableCell
                {
                    Text = utilisateur.NomUtilisateur
                },
                new TableCell
                {
                    Text = utilisateur.Courriel
                },
                new TableCell
                {
                    Text = utilisateur.MotPasse.ToString()
                },
                new TableCell
                {
                    Controls =
                    {
                        new HyperLink { NavigateUrl = string.Format("/Admin/Utilisateur/Modifier/{0}", utilisateur.NoUtilisateur), Text = "Modifier", CssClass = "btn btn-warning"}
                    }
                },
                new TableCell
                {
                    Controls =
                    {
                       btnSupprimer
                    }
                },
            }
        };
    }

    private void Supprimer(int? utilisateurNoUtilisateur)
    {
        daoUtil.Delete(new Utilisateur {NoUtilisateur = utilisateurNoUtilisateur});
        Response.Redirect(Request.RawUrl);
    }
}