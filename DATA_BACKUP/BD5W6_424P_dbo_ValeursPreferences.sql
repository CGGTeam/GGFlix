CREATE TABLE BD5W6_424P.dbo.ValeursPreferences
(
    NoUtilisateur int NOT NULL,
    NoPreference int NOT NULL,
    Valeur nvarchar(50) NOT NULL,
    CONSTRAINT PK_ValeursPreferences PRIMARY KEY (NoUtilisateur, NoPreference),
    CONSTRAINT FK_ValeursPreferences_UtilisateursPreferences FOREIGN KEY (NoUtilisateur, NoPreference) REFERENCES BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference)
);
INSERT INTO BD5W6_424P.dbo.ValeursPreferences (NoUtilisateur, NoPreference, Valeur) VALUES (3, 1, 'Yellow');
INSERT INTO BD5W6_424P.dbo.ValeursPreferences (NoUtilisateur, NoPreference, Valeur) VALUES (3, 2, 'Blue');
INSERT INTO BD5W6_424P.dbo.ValeursPreferences (NoUtilisateur, NoPreference, Valeur) VALUES (7, 1, 'Blue');
INSERT INTO BD5W6_424P.dbo.ValeursPreferences (NoUtilisateur, NoPreference, Valeur) VALUES (7, 2, 'Yellow');
INSERT INTO BD5W6_424P.dbo.ValeursPreferences (NoUtilisateur, NoPreference, Valeur) VALUES (7, 7, '20');