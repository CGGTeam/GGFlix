using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;

namespace LibrairieBD.Sql
{
    public class SqlDataAdapter : IDbAdapter
    {
        private readonly ISqlDataContext _dataContext;

        public SqlDataAdapter(ISqlDataContext dataContext)
        {
            this._dataContext = dataContext;
        }

        public IList<T> SelectAllInTable<T>()
        {
            SqlCommand command = GenerateSelectForTable<T>();

            List<T> allInTable = new List<T>();

            using (IDataReader dataReader = _dataContext.ExecuteReader(command))
            {
                while (dataReader.Read())
                {
                    allInTable.Add(ConvertRowToEntity<T>(dataReader));
                }
            }

            return allInTable;
        }

        public IList<T> SelectWhere<T>(Expression<Func<T, bool>> predicate)
        {
            SqlCommand command = GenerateSelectForTable<T>();
            command.CommandText += $" WHERE {predicate.ToWhereClause()}";

            List<T> allFromSelect = new List<T>();

            using (IDataReader dataReader = _dataContext.ExecuteReader(command))
            {
                while (dataReader.Read())
                {
                    allFromSelect.Add(ConvertRowToEntity<T>(dataReader));
                }
            }

            return allFromSelect;
        }

        private T ConvertRowToEntity<T>(IDataReader row)
        {
            try
            {
                ConstructorInfo defaultConstructor = typeof(T).GetConstructor(new Type[0]);
                T entity = (T)defaultConstructor.Invoke(new object[0]);

                entity = MapColumnValuesToEntity(entity, row);

                return entity;
            }
            catch (Exception e)
            {
                throw new ArgumentException("Specified entity has no default constructor");
            }
        }

        private T MapColumnValuesToEntity<T>(T entity, IDataReader row)
        {
            PropertyInfo[] properties = typeof(T).GetProperties();

            foreach (PropertyInfo prop in properties)
            {
                string mappedColumn = entity.GetMappingForProp(prop);

                var paramVal = row[mappedColumn];
                object[] parameters = { paramVal is DBNull ? null : paramVal };

                prop.SetMethod.Invoke(entity, parameters);
            }

            return entity;
        }

        private SqlCommand GenerateSelectForTable<T>()
        {
            string tableName = GetTableMapping<T>();
            string selectQuery = $"SELECT * FROM {tableName}";

            return new SqlCommand(selectQuery);
        }

        private string GetTableMapping<T>()
        {
            Type entityType = typeof(T);

            return entityType.GetTableMapping();
        }

        public T InsertInto<T>(T entity)
        {
            SqlCommand insertCommand = GenerateInsert<T>(entity);

            _dataContext.ExecuteNonQuery(insertCommand);

            if (entity.GetId() == null) entity.SetId(GetLastId());

            return entity;
        }

        private object GetLastId()
        {
            return _dataContext.ExecuteScalar(new SqlCommand("SELECT SCOPE_IDENTITY() AS[SCOPE_IDENTITY]"));
        }

        private SqlCommand GenerateInsert<T>(T entity)
        {
            SqlCommand command = new SqlCommand();
            PropertyInfo[] properties = typeof(T).GetProperties();
            string columns = "";
            string values = "";

            for (var i = 0; i < properties.Length; i++)
            {
                PropertyInfo prop = properties[i];
                string mappedColumn = entity.GetMappingForProp(prop);

                columns += mappedColumn;
                values += $"@{mappedColumn}";

                if (i < properties.Length - 1)
                {
                    columns += ", ";
                    values += ", ";
                }

                SqlParameter param = command.CreateParameter();
                param.Value = prop.GetMethod.Invoke(entity, new object[0]);
                command.Parameters.Add(param);
            }

            command.CommandText = $"INSERT INTO {GetTableMapping<T>()} ({columns}) VALUE ({values})";
            return command;
        }

        public T UpdateRow<T>(T entity)
        {
            SqlCommand updateCommand = GenerateUpdate<T>(entity);

            _dataContext.ExecuteNonQuery(updateCommand);

            return entity;
        }

        private SqlCommand GenerateUpdate<T>(T entity)
        {
            SqlCommand command = new SqlCommand();
            PropertyInfo[] properties = typeof(T).GetProperties();
            List<string> setStatements = new List<string>(properties.Length);
            string idCol = "";

            for (var i = 0; i < properties.Length; i++)
            {
                PropertyInfo prop = properties[i];
                string mappedColumn = entity.GetMappingForProp(prop);

                if (prop.GetCustomAttribute(typeof(Id)) != null)
                {
                    idCol = mappedColumn;
                    mappedColumn = "Id";
                }
                else
                {
                    setStatements.Add($"{mappedColumn} = @{mappedColumn}");
                }
                command.Parameters.Add(ParamFromProp(entity, prop, $"@{mappedColumn}"));
            }

            string commandText = $"UPDATE {GetTableMapping<T>()} ";
            if (setStatements.Count > 0) commandText += "SET ";
            for (var i = 0; i < setStatements.Count; i++)
                commandText += $"{setStatements[i]} {(i < setStatements.Count - 1 ? ", " : "")}";
            commandText += $"WHERE {idCol} = @Id";

            command.CommandText = commandText;
            return command;
        }

        public bool DeleteRow<T>(T entity)
        {
            SqlCommand deleteCommand = GenerateDelete<T>(entity);

            return _dataContext.ExecuteNonQuery(deleteCommand) > 0;
        }

        private SqlCommand GenerateDelete<T>(T entity)
        {
            SqlCommand command = new SqlCommand();
            PropertyInfo[] properties = typeof(T).GetProperties();
            string idCol = "";

            foreach (PropertyInfo prop in properties)
            {
                if (prop.GetCustomAttribute(typeof(Id)) != null)
                {
                    string mappedColumn = entity.GetMappingForProp(prop);

                    idCol = mappedColumn;
                    command.Parameters.Add(ParamFromProp(entity, prop, "@Id"));
                }
            }

            command.CommandText = $"DELETE FROM {GetTableMapping<T>()} WHERE {idCol} = @Id";
            return command;
        }

        private static SqlParameter ParamFromProp<T>(T entity, PropertyInfo prop, string paramName)
        {
            return new SqlParameter {ParameterName = $"{paramName}", Value = prop.GetMethod.Invoke(entity, new object[0])};
        }
    }
}
