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
        private ISqlDataContext aDataContext;

        public SqlDataAdapter(ISqlDataContext aDataContext)
        {
            this.aDataContext = aDataContext;
        }

        public IEnumerable<T> SelectAllInTable<T>()
        {
            SqlCommand command = GenerateSelectAllFor<T>();
           
            IDataReader dataReader = aDataContext.ExecuteReader(command);

            List<T> allInTable = new List<T>();
            while (dataReader.Read())
            {
                allInTable.Add(ConvertRowToEntity<T>(dataReader));
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

                object[] paramValue = { row[mappedColumn.ColumnName] };

                prop.SetMethod.Invoke(entity, paramValue);
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

        public IEnumerable<T> SelectWhere<T>(string @where)
        {
            throw new NotImplementedException();
        }
    }
}
