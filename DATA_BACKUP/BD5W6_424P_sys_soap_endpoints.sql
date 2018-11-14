CREATE TABLE sys.soap_endpoints
(
    name sysname NOT NULL,
    endpoint_id int NOT NULL,
    principal_id int,
    protocol tinyint NOT NULL,
    protocol_desc nvarchar(60),
    type tinyint NOT NULL,
    type_desc nvarchar(60),
    state tinyint,
    state_desc nvarchar(60),
    is_admin_endpoint bit NOT NULL,
    is_sql_language_enabled bit NOT NULL,
    wsdl_generator_procedure nvarchar(776),
    default_database sysname,
    default_namespace nvarchar(384),
    default_result_schema tinyint,
    default_result_schema_desc nvarchar(60),
    is_xml_charset_enforced bit NOT NULL,
    is_session_enabled bit NOT NULL,
    session_timeout int NOT NULL,
    login_type nvarchar(60),
    header_limit int NOT NULL
);