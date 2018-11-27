using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class SousTitre
    {
        [Id]
        [ColumnMapping]
        public int? NoSousTitre { get; set; }
        [ColumnMapping]
        public string LangueSousTitre { get; set; }
    }
}
