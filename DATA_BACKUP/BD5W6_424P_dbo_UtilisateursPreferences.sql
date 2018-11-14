CREATE TABLE BD5W6_424P.dbo.UtilisateursPreferences
(
    NoUtilisateur int NOT NULL,
    NoPreference int NOT NULL,
    CONSTRAINT PK_UtilisateursPreferences PRIMARY KEY (NoUtilisateur, NoPreference),
    CONSTRAINT FK_UtilisateursPreferences_Utilisateurs FOREIGN KEY (NoUtilisateur) REFERENCES BD5W6_424P.dbo.Utilisateurs (NoUtilisateur),
    CONSTRAINT FK_UtilisateursPreferences_Preferences FOREIGN KEY (NoPreference) REFERENCES BD5W6_424P.dbo.Preferences (NoPreference)
);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (3, 1);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (3, 2);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (4, 3);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (5, 3);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (5, 4);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (6, 3);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (6, 4);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (6, 5);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 1);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 2);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 3);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 4);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 5);
INSERT INTO BD5W6_424P.dbo.UtilisateursPreferences (NoUtilisateur, NoPreference) VALUES (7, 7);