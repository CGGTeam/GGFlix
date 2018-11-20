using System;
using System.Data.SqlTypes;

namespace LibrairieBD.Entites
{
    public class Film
    {
        private int? noFilm;
        private bool? versionEtendue;
        private bool? filmOriginal;

        [Id] [ColumnMapping] public int? NoFilm { get; set; } = null;
        [ColumnMapping] public int? AnneeSortie { get; set; } = null;
        [ColumnMapping] public int? Categorie { get; set; } = null;
        [ColumnMapping] public DateTime DateMAJ { get; set; } = DateTime.Now;
        [ColumnMapping] public int? NoUtilisateurMAJ { get; set; } = null;
        [ColumnMapping] public string Resume { get; set; } = null;
        [ColumnMapping] public int? DureeMinutes { get; set; } = null;
        [ColumnMapping] public bool? FilmOriginal { get; set; } = null;
        [ColumnMapping] public string ImagePochette { get; set; } = null;
        [ColumnMapping] public string TitreFrancais { get; set; } = null;
        [ColumnMapping] public string TitreOriginal { get; set; } = null;
        [ColumnMapping] public bool? VersionEtendue { get; set; } = null;
        [ColumnMapping] public int? NoRealisateur { get; set; } = null;
        [ColumnMapping] public int? NoProducteur { get; set; } = null;
        [ColumnMapping] public string XTra { get; set; } = null;
    }
}
