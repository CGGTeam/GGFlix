using System;
using System.Collections.Generic;
using System.Text;
using LibrairieBD;

namespace GGFlix_Test.Utils
{
    [TableMapping("Entities")]
    public class ExampleEntity
    {
        [ColumnMapping]
        public string Property { get; set; }
    }

    [TableMapping("OtherEntities")]
    public class AnotherExampleEntity
    {
        [ColumnMapping]
        public string Property { get; set; }
        [ColumnMapping]
        public string AnotherProperty { get; set; }
    }
}
