using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("FilmsLangue")]
    public class FilmsLangue
    {
        [Id]
        [ColumnMapping]
        public int? NoFilm { get; set; }
        [Id]
        [ColumnMapping]
        public int? NoLangue { get; set; }
    }
}
