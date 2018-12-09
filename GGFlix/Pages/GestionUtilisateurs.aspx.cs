﻿using System;
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
            AjouterUtilisateurAuTableau(utilisateur);
        }
    }

    private void AjouterUtilisateurAuTableau(Utilisateur utilisateur)
    {
        bool estEnLectureSeule = utilisateur.NomUtilisateur == utilCourant.NomUtilisateur;
        string descriptionType = typesUtilisateurs.Ou(t => (char)t.IdTypeUtilisateur.GetValueOrDefault() == utilisateur.TypeUtilisateur[0]).Premier().Description;

        TableRow rangeeUtilisateur = new TableRow
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
                    Text = utilisateur.MotPasse
                },
            }
        };
    }
}