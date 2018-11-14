CREATE TABLE sys.trace_columns
(
    trace_column_id smallint NOT NULL,
    name nvarchar(128),
    type_name nvarchar(128),
    max_size int,
    is_filterable bit NOT NULL,
    is_repeatable bit NOT NULL,
    is_repeated_base bit NOT NULL
);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (1, 'TextData', 'text', 1073741824, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (2, 'BinaryData', 'image', 1073741824, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (3, 'DatabaseID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (4, 'TransactionID', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (5, 'LineNumber', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (6, 'NTUserName', 'nvarchar', 512, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (7, 'NTDomainName', 'nvarchar', 512, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (8, 'HostName', 'nvarchar', 512, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (9, 'ClientProcessID', 'int', 4, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (10, 'ApplicationName', 'nvarchar', 512, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (11, 'LoginName', 'nvarchar', 512, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (12, 'SPID', 'int', 4, 1, 0, 1);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (13, 'Duration', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (14, 'StartTime', 'datetime', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (15, 'EndTime', 'datetime', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (16, 'Reads', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (17, 'Writes', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (18, 'CPU', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (19, 'Permissions', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (20, 'Severity', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (21, 'EventSubClass', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (22, 'ObjectID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (23, 'Success', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (24, 'IndexID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (25, 'IntegerData', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (26, 'ServerName', 'nvarchar', 512, 0, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (27, 'EventClass', 'int', 4, 0, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (28, 'ObjectType', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (29, 'NestLevel', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (30, 'State', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (31, 'Error', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (32, 'Mode', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (33, 'Handle', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (34, 'ObjectName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (35, 'DatabaseName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (36, 'FileName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (37, 'OwnerName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (38, 'RoleName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (39, 'TargetUserName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (40, 'DBUserName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (41, 'LoginSid', 'image', 1073741824, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (42, 'TargetLoginName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (43, 'TargetLoginSid', 'image', 1073741824, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (44, 'ColumnPermissions', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (45, 'LinkedServerName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (46, 'ProviderName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (47, 'MethodName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (48, 'RowCounts', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (49, 'RequestID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (50, 'XactSequence', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (51, 'EventSequence', 'bigint', 8, 0, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (52, 'BigintData1', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (53, 'BigintData2', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (54, 'GUID', 'uniqueidentifier', 16, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (55, 'IntegerData2', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (56, 'ObjectID2', 'bigint', 8, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (57, 'Type', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (58, 'OwnerID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (59, 'ParentName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (60, 'IsSystem', 'int', 4, 1, 1, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (61, 'Offset', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (62, 'SourceDatabaseID', 'int', 4, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (63, 'SqlHandle', 'image', 1073741824, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (64, 'SessionLoginName', 'nvarchar', 512, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (65, 'PlanHandle', 'image', 1073741824, 1, 0, 0);
INSERT INTO sys.trace_columns (trace_column_id, name, type_name, max_size, is_filterable, is_repeatable, is_repeated_base) VALUES (66, 'GroupID', 'int', 4, 1, 0, 0);