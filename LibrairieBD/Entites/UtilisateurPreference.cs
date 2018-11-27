using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("UtilisateursPreferences")]
    public class UtilisateurPreference
    {
        [Id]
        [ColumnMapping]
        public int? NoUtilisateur { get; set; }
        [Id]
        [ColumnMapping] public int? NoPreference { get; set; }
    }
}
