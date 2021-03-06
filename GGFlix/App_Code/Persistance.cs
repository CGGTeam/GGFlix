﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LibrairieBD.Dao;
using LibrairieBD.Entites;
using LibrairieBD.Sql;

public static class Persistance
{
    private static SqlDataAdapter _sqlDataAdapter = null;

    public static SqlDataAdapter SqlDataAdapter
    {
        get
        {
            if (_sqlDataAdapter == null)
            {
                System.Configuration.Configuration rootConfig =
                    System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/");

                string connString = rootConfig.ConnectionStrings.ConnectionStrings["BDConnectionString"].ConnectionString;

                SqlDataContext context = new SqlDataContext(connString);

                _sqlDataAdapter = new SqlDataAdapter(context);
            }

            return _sqlDataAdapter;
        }
    }

    public static GenericDao<T> GetDao<T>()
    {
        return new GenericDao<T>(SqlDataAdapter);
    }

    public static IList<Utilisateur> RecupererUtilisateursAyantPreferences(int idPref, string valeur)
    {
        var daoPreferences = GetDao<ValeurPreference>();
        IEnumerable<ValeurPreference> prefrencesRetenues = daoPreferences.FindAll()
            .Ou(pref => pref.NoPreference == idPref && pref.Valeur.Trim() == valeur);

        IList<Utilisateur> utilisateurs = new List<Utilisateur>();
        var daoUtil = GetDao<Utilisateur>();
        foreach (var pref in prefrencesRetenues)
        {
            utilisateurs.Add(daoUtil.Find(new Utilisateur{NoUtilisateur = pref.NoUtilisateur}).Premier());
        }

        return utilisateurs;
    }
}