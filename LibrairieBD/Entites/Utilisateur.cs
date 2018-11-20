using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Utilisateur
    {
        [Id]
        [ColumnMapping]
        public int NoUtilisateur { get; set; }
        [ColumnMapping]
        public string NomUtilisateur { get; set; }
        [ColumnMapping]
        public string Courriel { get; set; }
        [ColumnMapping]
        public string MotPasse { get; set; }
        [ColumnMapping]
        public string TypeUtilisateur { get; set; }
    }
}
