using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Sql
{
    public static class QueryType
    {
        public enum Write
        {
            INSERT,
            UPDATE,
            DELETE
        }

        public enum Read
        {
            SELECT
        }
    }
}
