CREATE TABLE sys.xml_schema_collections
(
    xml_collection_id int NOT NULL,
    schema_id int NOT NULL,
    principal_id int,
    name sysname NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL
);
INSERT INTO sys.xml_schema_collections (xml_collection_id, schema_id, principal_id, name, create_date, modify_date) VALUES (1, 4, null, 'sys', '2010-04-02 16:59:23.123', '2010-04-02 16:59:23.683');