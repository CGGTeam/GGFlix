CREATE TABLE sys.assemblies
(
    name sysname NOT NULL,
    principal_id int,
    assembly_id int NOT NULL,
    clr_name nvarchar(4000),
    permission_set tinyint,
    permission_set_desc nvarchar(60),
    is_visible bit NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_user_defined bit
);
INSERT INTO sys.assemblies (name, principal_id, assembly_id, clr_name, permission_set, permission_set_desc, is_visible, create_date, modify_date, is_user_defined) VALUES ('Microsoft.SqlServer.Types', 4, 1, 'microsoft.sqlserver.types, version=10.0.0.0, culture=neutral, publickeytoken=89845dcd8080cc91, processorarchitecture=msil', 3, 'UNSAFE_ACCESS', 1, '2010-04-02 16:59:23.400', '2010-04-02 16:59:23.870', 0);