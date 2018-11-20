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

            List<T> allFromSelect;

            using (IDataReader dataReader = _dataContext.ExecuteReader(command))
            {
                allFromSelect = dataReader.ToList<T>();
            }

            return allFromSelect;
        }

        public IList<T> SelectWhere<T>(Expression<Func<T, bool>> predicate)
        {
            SqlCommand command = GenerateSelectForTable<T>();
            command.CommandText += $" WHERE {predicate.ToWhereClause()}";

            List<T> allFromSelect;

            using (IDataReader dataReader = _dataContext.ExecuteReader(command))
            {
                allFromSelect = dataReader.ToList<T>();
            }

            return allFromSelect;
        }

        private SqlCommand GenerateSelectForTable<T>()
        {
            string tableName = typeof(T).GetTableMapping();
            string selectQuery = $"SELECT * FROM {tableName}";

            return new SqlCommand(selectQuery);
        }

        public T InsertInto<T>(T entity)
        {
            entity.SetId(CalcNextId<T>());
            ExpressionInsertQuery<T> insertQuery = new ExpressionInsertQuery<T>(entity);

            SqlCommand insertCommand = insertQuery.MakeCommand();

            _dataContext.ExecuteNonQuery(insertCommand);

            return entity;
        }

        public int CalcNextId<T>()
        {
            SqlCommand getIdCommand = new SqlCommand($"SELECT MAX({typeof(T).GetIdCol()}) FROM {typeof(T).GetTableMapping()}");
            int nextId = (int)_dataContext.ExecuteScalar(getIdCommand) + 1;

            return nextId;
        }

        public T UpdateRow<T>(T entity)
        {
            List<Expression<Func<T, bool>>> setClauses = new List<Expression<Func<T, bool>>>();
            foreach (var prop in typeof(T).GetProperties())
            {
                if (prop.IsIdProp()) continue;
                setClauses.Add(EntityUtils.PropCompareExpression<T>(prop, prop.InvokeGetOn(entity)));
            }

            ExpressionUpdateQuery<T> query = new ExpressionUpdateQuery<T>(
                EntityUtils.IdEqualsExpression<T>(entity.GetId()),
                setClauses);

            SqlCommand updateCommand = query.MakeCommand();

            _dataContext.ExecuteNonQuery(updateCommand);

            return entity;
        }

        public bool DeleteRow<T>(T entity)
        {
            ExpressionDeleteQuery<T> query = new ExpressionDeleteQuery<T>(EntityUtils.IdEqualsExpression<T>(entity.GetId()));

            SqlCommand deleteCommand = query.MakeCommand();

            return _dataContext.ExecuteNonQuery(deleteCommand) > 0;
        }

        public IList<T> ExecuteExpressionQuery<T>(IExpressionQuery query)
        {
            SqlCommand command = query.MakeCommand();

            List<T> allFromSelect;

            using (IDataReader dataReader = _dataContext.ExecuteReader(command))
            {
                allFromSelect = dataReader.ToList<T>();
            }

            return allFromSelect;
        }
    }
}
