using System.Collections.Generic;

namespace LibrairieBD.Dao
{
    interface IDao<T, ID>
    {
        IList<T> FindAll();
        IList<T> Find(T id);
        T Save(T entity);
        bool Delete(T entity);
    }
}
