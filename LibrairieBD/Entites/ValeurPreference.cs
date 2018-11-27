using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("ValeursPreferences")]
    public class ValeurPreference
    {
        [Id]
        [ColumnMapping]
        public int? NoUtilisateur { get; set; }
        [Id]
        [ColumnMapping]
        public int? NoPreference { get; set; }
    }
}
