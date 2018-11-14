CREATE TABLE sys.internal_tables
(
    name sysname NOT NULL,
    object_id int NOT NULL,
    principal_id int,
    schema_id int NOT NULL,
    parent_object_id int NOT NULL,
    type char(2) NOT NULL,
    type_desc nvarchar(60),
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_ms_shipped bit,
    is_published bit,
    is_schema_published bit,
    internal_type tinyint,
    internal_type_desc nvarchar(60),
    parent_id int,
    parent_minor_id int,
    lob_data_space_id int,
    filestream_data_space_id int
);
INSERT INTO sys.internal_tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, internal_type, internal_type_desc, parent_id, parent_minor_id, lob_data_space_id, filestream_data_space_id) VALUES ('queue_messages_1977058079', 1993058136, null, 4, 1977058079, 'IT', 'INTERNAL_TABLE', '2010-04-02 16:59:23.173', '2010-04-02 16:59:23.570', 0, 0, 0, 201, 'QUEUE_MESSAGES', 1977058079, 0, 1, null);
INSERT INTO sys.internal_tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, internal_type, internal_type_desc, parent_id, parent_minor_id, lob_data_space_id, filestream_data_space_id) VALUES ('queue_messages_2009058193', 2025058250, null, 4, 2009058193, 'IT', 'INTERNAL_TABLE', '2010-04-02 16:59:23.180', '2010-04-02 16:59:23.570', 0, 0, 0, 201, 'QUEUE_MESSAGES', 2009058193, 0, 1, null);
INSERT INTO sys.internal_tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, internal_type, internal_type_desc, parent_id, parent_minor_id, lob_data_space_id, filestream_data_space_id) VALUES ('queue_messages_2041058307', 2057058364, null, 4, 2041058307, 'IT', 'INTERNAL_TABLE', '2010-04-02 16:59:23.180', '2010-04-02 16:59:23.573', 0, 0, 0, 201, 'QUEUE_MESSAGES', 2041058307, 0, 1, null);
INSERT INTO sys.internal_tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, internal_type, internal_type_desc, parent_id, parent_minor_id, lob_data_space_id, filestream_data_space_id) VALUES ('filestream_tombstone_2073058421', 2073058421, null, 4, 0, 'IT', 'INTERNAL_TABLE', '2010-04-02 16:59:23.473', '2010-04-02 16:59:23.477', 0, 0, 0, 208, 'FILESTREAM_TOMBSTONE', 0, 0, 0, null);
INSERT INTO sys.internal_tables (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, internal_type, internal_type_desc, parent_id, parent_minor_id, lob_data_space_id, filestream_data_space_id) VALUES ('syscommittab', 2089058478, null, 4, 0, 'IT', 'INTERNAL_TABLE', '2010-04-02 16:59:23.497', '2010-04-02 16:59:23.500', 0, 0, 0, 210, 'TRACKED_COMMITTED_TRANSACTIONS', 0, 0, 0, null);