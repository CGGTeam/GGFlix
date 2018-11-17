using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Sql
{
    public interface IDbAdapter
    {
        IList<T> SelectAllInTable<T>();
        IList<T> SelectWhere<T>(string where);
    }
}