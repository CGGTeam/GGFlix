using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using LibrairieBD.Dao;
using LibrairieBD.Entites;

public static class Securite
{
    private static GenericDao<Utilisateur> daoUtil = Persistance.GetDao<Utilisateur>();

    public static Utilisateur UtilisateurCourant{
        get
        {
            string username = HttpContext.Current.User.Identity.Name;
            return daoUtil.Find(new Utilisateur {NomUtilisateur = username })[0];
        }
    }
}