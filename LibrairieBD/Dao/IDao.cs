using System;
using System.Collections.Generic;
using System.Text;

namespace GGFlix_Test
{
    interface IDao<T, ID>
    {
        IList<T> FindAll();
    }
}
