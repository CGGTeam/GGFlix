using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace LibrairieBD.Sql
{
    public interface IExpressionQuery
    {
        SqlCommand MakeCommand();
    }
}
