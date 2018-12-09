using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    [TableMapping("TypesUtilisateur")]
    public class TypeUtilisateur
    {
        [Id]
        [ColumnMapping("TypeUtilisateur")]
        public string IdTypeUtilisateur { get; set; }
        [ColumnMapping]
        public string Description { get; set; }
    }
}
