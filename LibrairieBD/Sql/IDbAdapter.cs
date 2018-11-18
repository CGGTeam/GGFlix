using System;
using System.Collections.Generic;
using System.Text;
using LibrairieBD.Entites;

namespace LibrairieBD.Sql
{
    public interface IDbAdapter
    {
        IList<T> SelectAllInTable<T>();
        IList<T> SelectWhere<T>(string where);
        T InsertInto<T>(T entity);
        T UpdateRow<T>(T entity);
    }
}