using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;

namespace LibrairieBD.Sql
{
    static class EntityUtils
    {
        public static object GetId<T>(this T entity)
        {
            PropertyInfo[] properties = typeof(T).GetProperties();

            foreach (PropertyInfo prop in properties)
            {
                if (prop.GetCustomAttribute(typeof(Id)) != null)
                {
                    return prop.GetMethod.Invoke(entity, new object[0]);
                }
            }

            throw new ArgumentException("Entity has no Id column");
        }

        public static void SetId<T>(this T entity, object value)
        {
            PropertyInfo[] properties = typeof(T).GetProperties();

            foreach (PropertyInfo prop in properties)
            {
                if (prop.GetCustomAttribute(typeof(Id)) != null)
                {
                    prop.SetMethod.Invoke(entity, new[] { value });
                    return;
                }
            }

            throw new ArgumentException("Entity has no Id column");
        }

        public static string GetMappingForProp(this Type t, PropertyInfo property)
        {
            ColumnMapping mapping = (ColumnMapping)property.GetCustomAttribute(typeof(ColumnMapping));
            
            if (mapping == null) throw new ArgumentException("Property has no mapped column", nameof(property));

            return mapping.ColumnName;
        }

        public static string GetTableMapping(this Type type)
        {
            TableMapping mappingAttr = (TableMapping)type.GetCustomAttribute(typeof(TableMapping));

            if (mappingAttr == null) return $"{type.Name}s";

            return (mappingAttr).TableName;
        }

        public static object CastVarToPropType(this PropertyInfo prop, object varToConvert)
        {
            var parameter = Expression.Parameter(typeof(object), "input");

            var cast = Expression.TypeAs(Expression.Convert(parameter, prop.PropertyType), typeof(object));

            var lambda = Expression.Lambda<Func<object, object>>(cast, parameter);

            var func = lambda.Compile();

            return func(varToConvert);
        }

        public static object InvokeGetOn(this PropertyInfo prop, object entity)
        {
            return prop.GetMethod.Invoke(entity, new object[0]);
        }

        public static object InvokeSetOn(this PropertyInfo prop, object entity, object value)
        {
            return prop.SetMethod.Invoke(entity, new[] {value});
        }

        public static string GetIdCol(this Type type)
        {
            PropertyInfo[] props = type.GetProperties();

            foreach (var prop in props)
            {
                if (prop.GetCustomAttribute(typeof(Id)) != null)
                    return type.GetMappingForProp(prop);
            }

            throw new ArgumentException("No Id Column mapped on entity " + type.FullName);
        }
    }
}
