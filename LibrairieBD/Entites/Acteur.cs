using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Acteur
    {
        [Id]
        [ColumnMapping]
        public int NoActeur { get; set; }
        [ColumnMapping]
        public string Nom { get; set; }
        [ColumnMapping]
        public string Sexe { get; set; }
    }
}
