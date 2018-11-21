using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("FilmsSousTitres")]
    public class FilmsSousTitres
    {
        [Id]
        [ColumnMapping]
        public int NoFilm { get; set; }
        [Id]
        [ColumnMapping]
        public int NoSousTitre { get; set; }
    }
}
