using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Sql
{
    public interface IDbAdapter
    {
        IEnumerable<T> SelectAllInTable<T>();
        IEnumerable<T> SelectWhere<T>(string where);
    }
}