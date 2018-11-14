CREATE TABLE sys.xml_schema_namespaces
(
    xml_collection_id int NOT NULL,
    name nvarchar(4000),
    xml_namespace_id int NOT NULL
);
INSERT INTO sys.xml_schema_namespaces (xml_collection_id, name, xml_namespace_id) VALUES (1, 'http://www.w3.org/2001/XMLSchema', 1);
INSERT INTO sys.xml_schema_namespaces (xml_collection_id, name, xml_namespace_id) VALUES (1, 'http://schemas.microsoft.com/sqlserver/2004/sqltypes', 2);
INSERT INTO sys.xml_schema_namespaces (xml_collection_id, name, xml_namespace_id) VALUES (1, 'http://www.w3.org/XML/1998/namespace', 3);