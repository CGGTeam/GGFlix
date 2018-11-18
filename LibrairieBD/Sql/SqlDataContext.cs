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
            connection = CreateConnection(connectionString);
        }

        public IDataReader ExecuteReader(SqlCommand command)
        {
            SqlDataReader reader;

            PrepareCommandForExecute(command);

            reader = command.ExecuteReader();

            return reader;
        }

        public int ExecuteNonQuery(SqlCommand command)
        {
            PrepareCommandForExecute(command);

            int affectedRows = command.ExecuteNonQuery();
            connection.Close();

            return affectedRows;
        }

        public object ExecuteScalar(SqlCommand command)
        {
            PrepareCommandForExecute(command);

            object scalar = command.ExecuteScalar();

            connection.Close();

            return scalar;
        }

        private void PrepareCommandForExecute(SqlCommand command)
        {
            connection.Open();

            command.Connection = connection;
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
        int ExecuteNonQuery(SqlCommand command);
        object ExecuteScalar(SqlCommand command);
    }
}
