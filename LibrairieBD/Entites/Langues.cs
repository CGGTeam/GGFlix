using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    public class Langues
    {
        [Id]
        [ColumnMapping]
        public int? NoLangue { get; set; }
        public string Langue { get; set; }
    }
}
