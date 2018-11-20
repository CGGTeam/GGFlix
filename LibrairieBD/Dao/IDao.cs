using System;
using System.Collections.Generic;
using System.Text;
using LibrairieBD.Entites;
using LibrairieBD.Sql;

namespace GGFlix_Test
{
    interface IDao<T, ID>
    {
        IList<T> FindAll();
        T FindById(ID id);
        T Save(T entity);
        bool Delete(T entity);
        IList<T> ExecuteExpressionQuery(IExpressionQuery query);
    }
}
