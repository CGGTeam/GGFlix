using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Categorie
    {
        [Id]
        [ColumnMapping]
        public int NoCategorie { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
