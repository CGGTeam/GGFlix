using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("FilmsLangue")]
    public class FilmsLangue
    {
        [ColumnMapping]
        public int NoFilm { get; set; }
        [ColumnMapping]
        public int NoLangue { get; set; }
    }
}
