using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Realisateur
    {
        [Id]
        [ColumnMapping]
        public int? NoRealisateur { get; set; }
        [ColumnMapping]
        public string Nom { get; set; }
    }
}
