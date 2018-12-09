using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("Langues")]
    public class Langues
    {
        [Id]
        [ColumnMapping]
        public int? NoLangue { get; set; }
        [ColumnMapping]
        public string Langue { get; set; }
    }
}
