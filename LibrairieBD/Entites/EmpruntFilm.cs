using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("EmpruntsFilms")]
    public class EmpruntFilm
    {
        [Id]
        [ColumnMapping]
        public int NoExemplaire { get; set; }
        [Id]
        [ColumnMapping]
        public int NoUtilisateur { get; set; }
        [ColumnMapping]
        public DateTime DateEmprunt { get; set; }
    }
}
