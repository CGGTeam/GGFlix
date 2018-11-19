using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;

namespace LibrairieBD.Sql
{
    static class ExpressionsToSql
    {
        private static readonly Dictionary<string, string> conversionDictionary = new Dictionary<string, string>
        {
            { "==", "=" },
            { "AndAlso", "AND" },
            { "OrElse", "OR" },
            { "\"", "\'" },
        };

        public static string ToWhereClause<T>(this Expression<Func<T, bool>> predicate)
        {
            var literalized = (Expression<Func<T, bool>>)new Literalizer().Visit(predicate);

            StringBuilder whereClause = new StringBuilder(literalized.Body.ToString());
            string paramName = predicate.Parameters.First().Name;
            
            whereClause.Replace(paramName, typeof(T).GetTableMapping());
            whereClause = MakeStandardConversions(whereClause);

            return whereClause.ToString();
        }

        //private static string GetText(this Expression expression)
        //{
        //    if (expression is ConditionalExpression)
        //    {
        //        ConditionalExpression condExpression = (ConditionalExpression) expression;

        //        condExpression.
        //    }
        //}

        private static StringBuilder MakeStandardConversions(StringBuilder builder)
        {
            foreach (var entry in conversionDictionary)
            {
                builder.Replace(entry.Key, entry.Value);
            }

            return builder;
        }

        internal class Literalizer : ExpressionVisitor
        {
            protected override Expression VisitMember(MemberExpression node)
            {
                if (node.Member.DeclaringType.IsDefined(typeof(CompilerGeneratedAttribute), false)
                    && node.Expression.NodeType == ExpressionType.Constant)
                {
                    object target = ((ConstantExpression)node.Expression).Value, value;
                    switch (node.Member.MemberType)
                    {
                        case MemberTypes.Property:
                            value = ((PropertyInfo)node.Member).GetValue(target, null);
                            break;
                        case MemberTypes.Field:
                            value = ((FieldInfo)node.Member).GetValue(target);
                            break;
                        default:
                            value = target = null;
                            break;
                    }
                    if (target != null) return Expression.Constant(value, node.Type);
                }
                return base.VisitMember(node);
            }
        }

    }
}
