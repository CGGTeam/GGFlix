using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Preference
    {
        [Id]
        [ColumnMapping]
        public int NoPreference { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
