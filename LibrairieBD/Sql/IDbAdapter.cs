using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using LibrairieBD.Entites;

namespace LibrairieBD.Sql
{
    public interface IDbAdapter
    {
        IList<T> SelectAllInTable<T>();
        IList<T> SelectWhere<T>(Expression<Func<T, bool>> predicate);
        T InsertInto<T>(T entity);
        T UpdateRow<T>(T entity);
        bool DeleteRow<T>(T entity);
    }
}