using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;

namespace LibrairieBD.Sql
{
    public class SqlDataContext: ISqlDataContext
    {
        private readonly string connectionString;

        public SqlDataContext(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IDataReader ExecuteReader(SqlCommand command)
        {
            SqlDataReader reader;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                command.Connection = connection;
                reader = command.ExecuteReader();
            }
          
            return reader;
        }

        public void ExecuteNonQuery(SqlCommand command)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                command.Connection = connection;
                command.ExecuteNonQuery();
            }
        }

        private SqlConnection CreateConnection(string connectionString)
        {
            if (string.IsNullOrEmpty(connectionString))
            {
                throw new ArgumentNullException(nameof(connectionString));
            }

            return new SqlConnection(connectionString);
        }
    }

    public interface ISqlDataContext
    {
        IDataReader ExecuteReader(SqlCommand command);
        void ExecuteNonQuery(SqlCommand command);
    }
}
