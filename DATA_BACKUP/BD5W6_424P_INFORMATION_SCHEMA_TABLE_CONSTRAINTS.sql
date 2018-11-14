CREATE TABLE INFORMATION_SCHEMA.TABLE_CONSTRAINTS
(
    CONSTRAINT_CATALOG nvarchar(128),
    CONSTRAINT_SCHEMA nvarchar(128),
    CONSTRAINT_NAME sysname NOT NULL,
    TABLE_CATALOG nvarchar(128),
    TABLE_SCHEMA nvarchar(128),
    TABLE_NAME sysname,
    CONSTRAINT_TYPE varchar(11),
    IS_DEFERRABLE varchar(2) NOT NULL,
    INITIALLY_DEFERRED varchar(2) NOT NULL
);
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Formats', 'BD5W6_424P', 'dbo', 'Formats', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Langues', 'BD5W6_424P', 'dbo', 'Langues', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Preferences', 'BD5W6_424P', 'dbo', 'Preferences', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Producteurs', 'BD5W6_424P', 'dbo', 'Producteurs', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Realisateurs', 'BD5W6_424P', 'dbo', 'Realisateurs', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_SousTitres', 'BD5W6_424P', 'dbo', 'SousTitres', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Supplements', 'BD5W6_424P', 'dbo', 'Supplements', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_TypesUtilisateur', 'BD5W6_424P', 'dbo', 'TypesUtilisateur', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Categories', 'BD5W6_424P', 'dbo', 'Categories', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_FilmsActeurs', 'BD5W6_424P', 'dbo', 'FilmsActeurs', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Films', 'BD5W6_424P', 'dbo', 'Films', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_EmpruntsFilms', 'BD5W6_424P', 'dbo', 'EmpruntsFilms', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_FilmsSousTitres', 'BD5W6_424P', 'dbo', 'FilmsSousTitres', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_FilmsSupplements', 'BD5W6_424P', 'dbo', 'FilmsSupplements', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_FilmsLangues', 'BD5W6_424P', 'dbo', 'FilmsLangues', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_UtilisateursPreferences', 'BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Utilisateurs', 'BD5W6_424P', 'dbo', 'Utilisateurs', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Exemplaires_1', 'BD5W6_424P', 'dbo', 'Exemplaires', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_ValeursPreferences', 'BD5W6_424P', 'dbo', 'ValeursPreferences', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_EmpruntsFilms_Exemplaires1', 'BD5W6_424P', 'dbo', 'EmpruntsFilms', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_EmpruntsFilms_Utilisateurs1', 'BD5W6_424P', 'dbo', 'EmpruntsFilms', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Exemplaires_Utilisateurs2', 'BD5W6_424P', 'dbo', 'Exemplaires', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Films_Categories', 'BD5W6_424P', 'dbo', 'Films', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Films_Formats', 'BD5W6_424P', 'dbo', 'Films', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Films_Producteurs', 'BD5W6_424P', 'dbo', 'Films', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Films_Realisateurs', 'BD5W6_424P', 'dbo', 'Films', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Films_Utilisateurs', 'BD5W6_424P', 'dbo', 'Films', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsActeurs_Acteurs', 'BD5W6_424P', 'dbo', 'FilmsActeurs', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsActeurs_Films', 'BD5W6_424P', 'dbo', 'FilmsActeurs', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsLangues_Films', 'BD5W6_424P', 'dbo', 'FilmsLangues', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsLangues_Langues', 'BD5W6_424P', 'dbo', 'FilmsLangues', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsSousTitres_Films', 'BD5W6_424P', 'dbo', 'FilmsSousTitres', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsSousTitres_SousTitres', 'BD5W6_424P', 'dbo', 'FilmsSousTitres', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsSupplements_Films', 'BD5W6_424P', 'dbo', 'FilmsSupplements', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_FilmsSupplements_Supplements', 'BD5W6_424P', 'dbo', 'FilmsSupplements', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_Utilisateurs_TypesUtilisateur', 'BD5W6_424P', 'dbo', 'Utilisateurs', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_UtilisateursPreferences_Preferences', 'BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_UtilisateursPreferences_Utilisateurs', 'BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'FK_ValeursPreferences_UtilisateursPreferences', 'BD5W6_424P', 'dbo', 'ValeursPreferences', 'FOREIGN KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK__sysdiagr__C2B05B61398D8EEE', 'BD5W6_424P', 'dbo', 'sysdiagrams', 'PRIMARY KEY', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'UK_principal_name', 'BD5W6_424P', 'dbo', 'sysdiagrams', 'UNIQUE', 'NO', 'NO');
INSERT INTO INFORMATION_SCHEMA.TABLE_CONSTRAINTS (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED) VALUES ('BD5W6_424P', 'dbo', 'PK_Acteurs', 'BD5W6_424P', 'dbo', 'Acteurs', 'PRIMARY KEY', 'NO', 'NO');