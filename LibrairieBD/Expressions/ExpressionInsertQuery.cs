using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;
using LibrairieBD.Sql;

namespace LibrairieBD
{
    public class ExpressionInsertQuery<TEntity>
    {
        public ExpressionInsertQuery(TEntity entity)
        {
            Entity = entity;
        }

        public SqlCommand MakeCommand()
        {
            return GenerateInsert(Entity);
        }

        public TEntity Entity { get; }

        private SqlCommand GenerateInsert<T>(T entity)
        {
            SqlCommand command = new SqlCommand();
            PropertyInfo[] properties = typeof(T).GetProperties();
            string columns = "";
            string values = "";
            string idCol = "";
            string idVal = "";

            for (var i = 0; i < properties.Length; i++)
            {
                PropertyInfo prop = properties[i];
                string mappedColumn = prop.GetColMapping();

                if (prop.IsIdProp())
                {
                    idCol = mappedColumn;

                    idVal = prop.InvokeGetOn(entity).ToString();

                    continue;
                }

                columns += mappedColumn;
                values += $"@{mappedColumn}";

                if (i < properties.Length - 1)
                {
                    columns += ", ";
                    values += ", ";
                }

                SqlParameter param = prop.ToParam(entity);
                if (prop.PropertyType == typeof(DateTime))
                {
                    param.SqlDbType = SqlDbType.DateTime;
                }

                command.Parameters.Add(param);
            }

            if (!string.IsNullOrEmpty(columns)) idCol += ", ";
            if (!string.IsNullOrEmpty(values)) idVal += ", ";

            command.CommandText =
                $"INSERT INTO {typeof(T).GetTableMapping()} ({idCol}{columns}) VALUES ({idVal}{values})";
            return command;
        }

        public ExecuteType ExecuteType => ExecuteType.NONQUERY;
    }
}
