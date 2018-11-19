using System;

namespace LibrairieBD.Entites
{
    public class Film
    {
        private int? noFilm;
        private bool? versionEtendue;
        private bool? filmOriginal;

        [Id]
        [ColumnMapping]
        public int NoFilm {
            get { return noFilm.Value; }
            set { noFilm = value; }
        }
        [ColumnMapping] public int AnneeSortie { get; set; }
        [ColumnMapping] public int Categorie { get; set; }
        [ColumnMapping] public DateTime DateMAJ { get; set; }
        [ColumnMapping] public int NoUtilisateurMAJ { get; set; }
        [ColumnMapping] public string Resume { get; set; }
        [ColumnMapping] public int DureeMinutes { get; set; }
        [ColumnMapping] public bool FilmOriginal
        {
            get { return filmOriginal.GetValueOrDefault();}
            set { filmOriginal = value;}
        }
        [ColumnMapping] public string ImagePochette { get; set; }
        [ColumnMapping] public string TitreFrancais { get; set; }
        [ColumnMapping] public string TitreOriginal { get; set; }

        [ColumnMapping]
        public bool VersionEtendue
        {
            get { return versionEtendue.GetValueOrDefault(); }
            set { versionEtendue = value; }
        }
        [ColumnMapping] public int NoRealisateur { get; set; }
        [ColumnMapping] public int NoProducteur { get; set; }
        [ColumnMapping] public string XTra { get; set; }
    }
}
