CREATE TABLE sys.key_constraints
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
    unique_index_id int,
    is_system_named bit NOT NULL
);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Formats', 5575058, null, 1, 2137058649, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.377', '2018-10-31 16:21:33.377', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Langues', 37575172, null, 1, 21575115, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.380', '2018-10-31 16:21:33.380', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Preferences', 69575286, null, 1, 53575229, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.387', '2018-10-31 16:21:33.387', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Producteurs', 101575400, null, 1, 85575343, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.403', '2018-10-31 16:21:33.403', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Realisateurs', 133575514, null, 1, 117575457, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.410', '2018-10-31 16:21:33.410', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_SousTitres', 165575628, null, 1, 149575571, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.413', '2018-10-31 16:21:33.413', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Supplements', 197575742, null, 1, 181575685, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.420', '2018-10-31 16:21:33.420', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_TypesUtilisateur', 229575856, null, 1, 213575799, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.423', '2018-10-31 16:21:33.423', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Categories', 261575970, null, 1, 245575913, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.430', '2018-10-31 16:21:33.430', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_FilmsActeurs', 293576084, null, 1, 277576027, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.433', '2018-10-31 16:21:33.433', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Films', 325576198, null, 1, 309576141, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.443', '2018-10-31 16:21:33.443', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_EmpruntsFilms', 357576312, null, 1, 341576255, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.450', '2018-10-31 16:21:33.450', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_FilmsSousTitres', 389576426, null, 1, 373576369, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.453', '2018-10-31 16:21:33.453', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_FilmsSupplements', 421576540, null, 1, 405576483, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.460', '2018-10-31 16:21:33.460', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_FilmsLangues', 453576654, null, 1, 437576597, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.463', '2018-10-31 16:21:33.463', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_UtilisateursPreferences', 485576768, null, 1, 469576711, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.467', '2018-10-31 16:21:33.467', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Utilisateurs', 517576882, null, 1, 501576825, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.473', '2018-10-31 16:21:33.473', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Exemplaires_1', 549576996, null, 1, 533576939, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.477', '2018-10-31 16:21:33.477', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_ValeursPreferences', 581577110, null, 1, 565577053, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.483', '2018-10-31 16:21:33.483', 0, 0, 0, 1, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK__sysdiagr__C2B05B61398D8EEE', 981578535, null, 1, 933578364, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-11-14 12:22:59.203', '2018-11-14 12:22:59.203', 0, 0, 0, 1, 1);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('UK_principal_name', 997578592, null, 1, 933578364, 'UQ', 'UNIQUE_CONSTRAINT', '2018-11-14 12:22:59.223', '2018-11-14 12:22:59.223', 0, 0, 0, 2, 0);
INSERT INTO sys.key_constraints (name, object_id, principal_id, schema_id, parent_object_id, type, type_desc, create_date, modify_date, is_ms_shipped, is_published, is_schema_published, unique_index_id, is_system_named) VALUES ('PK_Acteurs', 2121058592, null, 1, 2105058535, 'PK', 'PRIMARY_KEY_CONSTRAINT', '2018-10-31 16:21:33.370', '2018-10-31 16:21:33.370', 0, 0, 0, 1, 0);