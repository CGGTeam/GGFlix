using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;

namespace LibrairieBD.Sql
{
    public class SqlDataContext: ISqlDataContext
    {
        private readonly SqlConnection connection;

        public SqlDataContext(string connectionString)
        {
            this.connection = new SqlConnection(connectionString);
        }

        public IDataReader ExecuteReader(SqlCommand command)
        {
            SqlDataReader reader;

            connection.Open();

            command.Connection = connection;
            reader = command.ExecuteReader();


            return reader;
        }

        public void ExecuteNonQuery(SqlCommand command)
        {
            connection.Open();

            command.Connection = connection;
            command.ExecuteNonQuery();
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
