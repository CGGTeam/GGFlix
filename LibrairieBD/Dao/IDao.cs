using System;
using System.Collections.Generic;
using System.Text;
using LibrairieBD.Entites;

namespace GGFlix_Test
{
    interface IDao<T, ID>
    {
        IList<T> FindAll();
        T Save(T entity);
        bool Delete(T entity);
    }
}
