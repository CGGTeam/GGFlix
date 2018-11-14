CREATE TABLE sys.assembly_types
(
    name sysname NOT NULL,
    system_type_id tinyint NOT NULL,
    user_type_id int NOT NULL,
    schema_id int NOT NULL,
    principal_id int,
    max_length smallint NOT NULL,
    precision tinyint NOT NULL,
    scale tinyint NOT NULL,
    collation_name sysname,
    is_nullable bit,
    is_user_defined bit NOT NULL,
    is_assembly_type bit NOT NULL,
    default_object_id int NOT NULL,
    rule_object_id int NOT NULL,
    assembly_id int NOT NULL,
    assembly_class sysname,
    is_binary_ordered bit,
    is_fixed_length bit,
    prog_id nvarchar(40),
    assembly_qualified_name nvarchar(4000),
    is_table_type bit NOT NULL
);
INSERT INTO sys.assembly_types (name, system_type_id, user_type_id, schema_id, principal_id, max_length, precision, scale, collation_name, is_nullable, is_user_defined, is_assembly_type, default_object_id, rule_object_id, assembly_id, assembly_class, is_binary_ordered, is_fixed_length, prog_id, assembly_qualified_name, is_table_type) VALUES ('hierarchyid', 240, 128, 4, null, 892, 0, 0, null, 1, 0, 1, 0, 0, 1, 'Microsoft.SqlServer.Types.SqlHierarchyId', 1, 0, null, 'Microsoft.SqlServer.Types.SqlHierarchyId, Microsoft.SqlServer.Types, Version=10.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91', 0);
INSERT INTO sys.assembly_types (name, system_type_id, user_type_id, schema_id, principal_id, max_length, precision, scale, collation_name, is_nullable, is_user_defined, is_assembly_type, default_object_id, rule_object_id, assembly_id, assembly_class, is_binary_ordered, is_fixed_length, prog_id, assembly_qualified_name, is_table_type) VALUES ('geometry', 240, 129, 4, null, -1, 0, 0, null, 1, 0, 1, 0, 0, 1, 'Microsoft.SqlServer.Types.SqlGeometry', 0, 0, null, 'Microsoft.SqlServer.Types.SqlGeometry, Microsoft.SqlServer.Types, Version=10.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91', 0);
INSERT INTO sys.assembly_types (name, system_type_id, user_type_id, schema_id, principal_id, max_length, precision, scale, collation_name, is_nullable, is_user_defined, is_assembly_type, default_object_id, rule_object_id, assembly_id, assembly_class, is_binary_ordered, is_fixed_length, prog_id, assembly_qualified_name, is_table_type) VALUES ('geography', 240, 130, 4, null, -1, 0, 0, null, 1, 0, 1, 0, 0, 1, 'Microsoft.SqlServer.Types.SqlGeography', 0, 0, null, 'Microsoft.SqlServer.Types.SqlGeography, Microsoft.SqlServer.Types, Version=10.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91', 0);