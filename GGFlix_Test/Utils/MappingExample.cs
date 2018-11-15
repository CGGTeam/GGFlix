using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Utils
{
    public class RowMapExample
    {
        [ColumnMapping]
        public string id
        {
            get;
            set;
        }

        [ColumnMapping]
        public string nom
        {
            get;
            set;
        }

        [ColumnMapping("ID_CUST")]
        public string customer
        {
            get;
            set;
        }

        [ColumnMapping("ID_CLIENT")]
        public string client
        {
            get;
            set;
        }
    }
}
