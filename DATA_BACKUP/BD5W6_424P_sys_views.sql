CREATE TABLE sys.views
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
    is_ms_shipped bit NOT NULL,
    is_published bit NOT NULL,
    is_schema_published bit NOT NULL,
    is_replicated bit,
    has_replication_filter bit,
    has_opaque_metadata bit NOT NULL,
    has_unchecked_assembly_data bit NOT NULL,
    with_check_option bit NOT NULL,
    is_date_correlation_view bit NOT NULL,
    is_tracked_by_cdc bit
);