using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("FilmsActeurs")]
    public class FilmActeur
    {
        [Id]
        [ColumnMapping]
        public int NoFilm { get; set; }
        [Id]
        [ColumnMapping]
        public int NoActeur { get; set; }
    }
}
