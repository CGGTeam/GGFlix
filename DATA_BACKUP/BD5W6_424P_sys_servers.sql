CREATE TABLE sys.servers
(
    server_id int NOT NULL,
    name sysname NOT NULL,
    product sysname NOT NULL,
    provider sysname NOT NULL,
    data_source nvarchar(4000),
    location nvarchar(4000),
    provider_string nvarchar(4000),
    catalog sysname,
    connect_timeout int,
    query_timeout int,
    is_linked bit NOT NULL,
    is_remote_login_enabled bit NOT NULL,
    is_rpc_out_enabled bit NOT NULL,
    is_data_access_enabled bit NOT NULL,
    is_collation_compatible bit NOT NULL,
    uses_remote_collation bit NOT NULL,
    collation_name sysname,
    lazy_schema_validation bit NOT NULL,
    is_system bit NOT NULL,
    is_publisher bit NOT NULL,
    is_subscriber bit,
    is_distributor bit,
    is_nonsql_subscriber bit,
    is_remote_proc_transaction_promotion_enabled bit,
    modify_date datetime NOT NULL
);
INSERT INTO sys.servers (server_id, name, product, provider, data_source, location, provider_string, catalog, connect_timeout, query_timeout, is_linked, is_remote_login_enabled, is_rpc_out_enabled, is_data_access_enabled, is_collation_compatible, uses_remote_collation, collation_name, lazy_schema_validation, is_system, is_publisher, is_subscriber, is_distributor, is_nonsql_subscriber, is_remote_proc_transaction_promotion_enabled, modify_date) VALUES (0, 'SV-SQLINFO\SQLINFO', 'SQL Server', 'SQLNCLI', 'SV-SQLINFO\SQLINFO', null, null, null, 0, 0, 0, 1, 1, 0, 0, 1, null, 0, 0, 0, 0, 0, 0, 0, '2011-08-19 08:54:05.900');