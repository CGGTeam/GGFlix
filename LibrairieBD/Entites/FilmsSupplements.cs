using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("FilmsSupplements")]
    public class FilmsSupplements
    {
        [Id]
        [ColumnMapping]
        public int NoFilm { get; set; }
        [Id]
        [ColumnMapping]
        public int NoSupplement { get; set; }
    }
}
