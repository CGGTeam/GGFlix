using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Utilisateur
    {
        [Id] [ColumnMapping] public int? NoUtilisateur { get; set; } = null;
        [ColumnMapping]
        public string NomUtilisateur { get; set; }
        [ColumnMapping]
        public string Courriel { get; set; }
        [ColumnMapping] public int? MotPasse { get; set; } = null;
        [ColumnMapping]
        public string TypeUtilisateur { get; set; }
    }
}
