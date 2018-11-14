CREATE TABLE sys.endpoint_webmethods
(
    endpoint_id int NOT NULL,
    namespace nvarchar(384),
    method_alias nvarchar(64) NOT NULL,
    object_name nvarchar(776),
    result_schema tinyint,
    result_schema_desc nvarchar(60),
    result_format tinyint,
    result_format_desc nvarchar(60)
);