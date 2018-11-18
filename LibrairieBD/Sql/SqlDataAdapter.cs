using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Text;

namespace LibrairieBD.Sql
{
    public class SqlDataAdapter : IDbAdapter
    {
        private ISqlDataContext dataContext;

        public SqlDataAdapter(ISqlDataContext dataContext)
        {
            this.dataContext = dataContext;
        }

        public IList<T> SelectAllInTable<T>()
        {
            SqlCommand command = GenerateSelectAllFor<T>();

            List<T> allInTable = new List<T>();

            using (IDataReader dataReader = dataContext.ExecuteReader(command))
            {
                while (dataReader.Read())
                {
                    allInTable.Add(ConvertRowToEntity<T>(dataReader));
                }
            }

            return allInTable;
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
                ColumnMapping mappedColumn = (ColumnMapping)prop.GetCustomAttribute(typeof(ColumnMapping));

                var paramVal = row[mappedColumn.ColumnName];
                object[] parameters = { paramVal is DBNull ? null : paramVal };

                prop.SetMethod.Invoke(entity, parameters);
            }

            return entity;
        }

        private SqlCommand GenerateSelectAllFor<T>()
        {
            string tableName = getTableMapping<T>();
            string selectQuery = $"SELECT * FROM {tableName}";

            return new SqlCommand(selectQuery);
        }

        private string getTableMapping<T>()
        {
            Type entityType = typeof(T);
            Attribute mappingAttr = entityType.GetCustomAttribute(typeof(TableMapping));

            if (mappingAttr == null) return $"{entityType.Name}s";

            return ((TableMapping)mappingAttr).TableName;
        }

        public T InsertInto<T>(T entity)
        {
            SqlCommand insertCommand = GenerateInsert<T>(entity);

            dataContext.ExecuteNonQuery(insertCommand);

            return entity;
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
                ColumnMapping mappedColumn = (ColumnMapping)prop.GetCustomAttribute(typeof(ColumnMapping));

                columns += mappedColumn.ColumnName;
                values += $"@{mappedColumn.ColumnName}";

                if (i < properties.Length - 1)
                {
                    columns += ", ";
                    values += ", ";
                }

                SqlParameter param = command.CreateParameter();
                param.Value = prop.GetMethod.Invoke(entity, new object[0]);
                command.Parameters.Add(param);
            }

            command.CommandText = $"INSERT INTO {getTableMapping<T>()} ({columns}) VALUE ({values})";
            return command;
        }

        public T UpdateRow<T>(T entity)
        {
            SqlCommand insertCommand = GenerateUpdate<T>(entity);

            dataContext.ExecuteNonQuery(insertCommand);

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
                ColumnMapping mappedColumn = (ColumnMapping)prop.GetCustomAttribute(typeof(ColumnMapping));

                if (prop.GetCustomAttribute(typeof(Id)) != null)
                {
                    idCol = mappedColumn.ColumnName;
                }
                else
                {
                    setStatements.Add($"{mappedColumn.ColumnName} = @{mappedColumn.ColumnName}");
                }

                command.Parameters.Add(ParamFromProp(entity, prop, mappedColumn.ColumnName));
            }

            string commandText = $"UPDATE {getTableMapping<T>()} ";
            if (setStatements.Count > 0) commandText += "SET ";
            for (var i = 0; i < setStatements.Count; i++)
                commandText += $"{setStatements[i]} {(i < setStatements.Count - 1 ? ", " : "")}";
            commandText += $"WHERE {idCol} = @Id";

            command.CommandText = commandText;
            return command;
        }

        private static SqlParameter ParamFromProp<T>(T entity, PropertyInfo prop, string colName)
        {
            return new SqlParameter {ParameterName = $"@{colName}", Value = prop.GetMethod.Invoke(entity, new object[0])};
        }

        public IList<T> SelectWhere<T>(string where)
        {
            throw new NotImplementedException();
        }
    }
}
