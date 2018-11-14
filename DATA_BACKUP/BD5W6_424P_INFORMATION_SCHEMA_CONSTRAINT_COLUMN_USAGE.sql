CREATE TABLE INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
(
    TABLE_CATALOG nvarchar(128),
    TABLE_SCHEMA nvarchar(128),
    TABLE_NAME sysname NOT NULL,
    COLUMN_NAME nvarchar(128),
    CONSTRAINT_CATALOG nvarchar(128),
    CONSTRAINT_SCHEMA nvarchar(128),
    CONSTRAINT_NAME sysname NOT NULL
);
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'EmpruntsFilms', 'NoExemplaire', 'BD5W6_424P', 'dbo', 'FK_EmpruntsFilms_Exemplaires1');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'EmpruntsFilms', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'FK_EmpruntsFilms_Utilisateurs1');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Exemplaires', 'NoUtilisateurProprietaire', 'BD5W6_424P', 'dbo', 'FK_Exemplaires_Utilisateurs2');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'Categorie', 'BD5W6_424P', 'dbo', 'FK_Films_Categories');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'Format', 'BD5W6_424P', 'dbo', 'FK_Films_Formats');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'NoProducteur', 'BD5W6_424P', 'dbo', 'FK_Films_Producteurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'NoRealisateur', 'BD5W6_424P', 'dbo', 'FK_Films_Realisateurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'NoUtilisateurMAJ', 'BD5W6_424P', 'dbo', 'FK_Films_Utilisateurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsActeurs', 'NoActeur', 'BD5W6_424P', 'dbo', 'FK_FilmsActeurs_Acteurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsActeurs', 'NoFilm', 'BD5W6_424P', 'dbo', 'FK_FilmsActeurs_Films');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsLangues', 'NoFilm', 'BD5W6_424P', 'dbo', 'FK_FilmsLangues_Films');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsLangues', 'NoLangue', 'BD5W6_424P', 'dbo', 'FK_FilmsLangues_Langues');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSousTitres', 'NoFilm', 'BD5W6_424P', 'dbo', 'FK_FilmsSousTitres_Films');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSousTitres', 'NoSousTitre', 'BD5W6_424P', 'dbo', 'FK_FilmsSousTitres_SousTitres');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSupplements', 'NoFilm', 'BD5W6_424P', 'dbo', 'FK_FilmsSupplements_Films');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSupplements', 'NoSupplement', 'BD5W6_424P', 'dbo', 'FK_FilmsSupplements_Supplements');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Utilisateurs', 'TypeUtilisateur', 'BD5W6_424P', 'dbo', 'FK_Utilisateurs_TypesUtilisateur');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'NoPreference', 'BD5W6_424P', 'dbo', 'FK_UtilisateursPreferences_Preferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'FK_UtilisateursPreferences_Utilisateurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'ValeursPreferences', 'NoPreference', 'BD5W6_424P', 'dbo', 'FK_ValeursPreferences_UtilisateursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'ValeursPreferences', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'FK_ValeursPreferences_UtilisateursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'sysdiagrams', 'diagram_id', 'BD5W6_424P', 'dbo', 'PK__sysdiagr__C2B05B61398D8EEE');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Acteurs', 'NoActeur', 'BD5W6_424P', 'dbo', 'PK_Acteurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Categories', 'NoCategorie', 'BD5W6_424P', 'dbo', 'PK_Categories');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'EmpruntsFilms', 'NoExemplaire', 'BD5W6_424P', 'dbo', 'PK_EmpruntsFilms');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'EmpruntsFilms', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'PK_EmpruntsFilms');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Exemplaires', 'NoExemplaire', 'BD5W6_424P', 'dbo', 'PK_Exemplaires_1');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Films', 'NoFilm', 'BD5W6_424P', 'dbo', 'PK_Films');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsActeurs', 'NoActeur', 'BD5W6_424P', 'dbo', 'PK_FilmsActeurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsActeurs', 'NoFilm', 'BD5W6_424P', 'dbo', 'PK_FilmsActeurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsLangues', 'NoFilm', 'BD5W6_424P', 'dbo', 'PK_FilmsLangues');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsLangues', 'NoLangue', 'BD5W6_424P', 'dbo', 'PK_FilmsLangues');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSousTitres', 'NoFilm', 'BD5W6_424P', 'dbo', 'PK_FilmsSousTitres');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSousTitres', 'NoSousTitre', 'BD5W6_424P', 'dbo', 'PK_FilmsSousTitres');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSupplements', 'NoFilm', 'BD5W6_424P', 'dbo', 'PK_FilmsSupplements');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'FilmsSupplements', 'NoSupplement', 'BD5W6_424P', 'dbo', 'PK_FilmsSupplements');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Formats', 'NoFormat', 'BD5W6_424P', 'dbo', 'PK_Formats');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Langues', 'NoLangue', 'BD5W6_424P', 'dbo', 'PK_Langues');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Preferences', 'NoPreference', 'BD5W6_424P', 'dbo', 'PK_Preferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Producteurs', 'NoProducteur', 'BD5W6_424P', 'dbo', 'PK_Producteurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Realisateurs', 'NoRealisateur', 'BD5W6_424P', 'dbo', 'PK_Realisateurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'SousTitres', 'NoSousTitre', 'BD5W6_424P', 'dbo', 'PK_SousTitres');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Supplements', 'NoSupplement', 'BD5W6_424P', 'dbo', 'PK_Supplements');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'TypesUtilisateur', 'TypeUtilisateur', 'BD5W6_424P', 'dbo', 'PK_TypesUtilisateur');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'Utilisateurs', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'PK_Utilisateurs');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'NoPreference', 'BD5W6_424P', 'dbo', 'PK_UtilisateursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'UtilisateursPreferences', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'PK_UtilisateursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'ValeursPreferences', 'NoPreference', 'BD5W6_424P', 'dbo', 'PK_ValeursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'ValeursPreferences', 'NoUtilisateur', 'BD5W6_424P', 'dbo', 'PK_ValeursPreferences');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'sysdiagrams', 'name', 'BD5W6_424P', 'dbo', 'UK_principal_name');
INSERT INTO INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE (TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME) VALUES ('BD5W6_424P', 'dbo', 'sysdiagrams', 'principal_id', 'BD5W6_424P', 'dbo', 'UK_principal_name');