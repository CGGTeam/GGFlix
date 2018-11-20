using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Langue
    {
        [Id]
        [ColumnMapping]
        public int NoLangue { get; set; }
        [ColumnMapping("Langue")]
        public string DescLangue { get; set; }
    }
}
