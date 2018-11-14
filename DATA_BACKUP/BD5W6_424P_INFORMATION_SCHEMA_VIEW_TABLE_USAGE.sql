CREATE TABLE INFORMATION_SCHEMA.VIEW_TABLE_USAGE
(
    VIEW_CATALOG nvarchar(128),
    VIEW_SCHEMA nvarchar(128),
    VIEW_NAME sysname NOT NULL,
    TABLE_CATALOG nvarchar(128),
    TABLE_SCHEMA nvarchar(128),
    TABLE_NAME sysname NOT NULL
);