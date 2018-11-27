using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Format
    {
        [Id]
        [ColumnMapping]
        public int? NoFormat { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
