using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace LibrairieBD.Sql
{
    public class OrderByExpression<T, TR>
    {
        public OrderByExpression(Expression<Func<T, TR>> expression)
        {
            Expression = expression;
        }

        public Expression<Func<T, TR>> Expression { get; set; }
        public bool IsAscending { get; set; } = true;
    }
}
