using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Exemplaire
    {
        [Id]
        [ColumnMapping]
        public int NoExemplaire { get; set; }
        [ColumnMapping]
        public int NoUtilisateurProprietaire { get; set; }
    }
}
