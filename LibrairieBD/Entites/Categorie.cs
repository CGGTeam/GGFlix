using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Categorie
    {
        [Id]
        [ColumnMapping]
        public int? NoCategorie { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
