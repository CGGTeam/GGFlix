using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Acteur
    {
        [Id] [ColumnMapping] public int? NoActeur { get; set; } = null;
        [ColumnMapping]
        public string Nom { get; set; }
        [ColumnMapping]
        public string Sexe { get; set; }
    }
}
