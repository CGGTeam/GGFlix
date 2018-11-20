using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Realisateur
    {
        [Id]
        [ColumnMapping]
        public int NoRealisateur { get; set; }
        [ColumnMapping]
        public string Nom { get; set; }
    }
}
