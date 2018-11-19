using System;
using System.Collections.Generic;
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

        public static string GetMappingForProp<T>(this T entity, PropertyInfo property)
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
    }
}
