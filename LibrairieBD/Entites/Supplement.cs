using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Supplement
    {
        [Id]
        [ColumnMapping]
        public int? NoSupplement { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
