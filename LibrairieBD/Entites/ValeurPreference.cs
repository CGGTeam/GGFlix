using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("ValeursPreferences")]
    class ValeurPreference
    {
        [Id]
        [ColumnMapping]
        public int NoUtilisateur { get; set; }
        [Id]
        [ColumnMapping]
        public int NoPreference { get; set; }
    }
}
