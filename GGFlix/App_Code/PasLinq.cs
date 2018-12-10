using System;
using System.Collections.Generic;
using System.Web;

public static class PasLinq
{
    public static IEnumerable<T> Ou<T>(this IEnumerable<T> liste, Func<T, bool> condition)
    {
        ICollection<T> resultat = new List<T>(liste.Compte());

        foreach (var item in liste)
        {
            if (condition(item))
            {
                resultat.Add(item);
            }
        }

        return resultat;
    }

    public static int Compte<T>(this IEnumerable<T> liste)
    {
        int decompte = 0;

        foreach (var item in liste)
        {
            decompte++;
        }

        return decompte;
    }

    public static T Premier<T>(this IEnumerable<T> liste)
    {
        T resultat;

        using (IEnumerator<T> enumerateur = liste.GetEnumerator())
        {
            enumerateur.MoveNext();
            resultat = enumerateur.Current;
        }

        return resultat;
    }

    public static bool Quelconque<T>(this IEnumerable<T> liste, Func<T, bool> condition)
    {
        foreach (var item in liste)
        {
            if (condition(item))
            {
                return true;
            }
        }

        return false;
    }
}