CREATE TABLE BD5W6_424P.dbo.Preferences
(
    NoPreference int PRIMARY KEY NOT NULL,
    Description nvarchar(50)
);
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (1, 'Couleur de fond');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (2, 'Couleur du texte');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (3, 'Envoi courriel si ajout');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (4, 'Envoi courriel si appropriation');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (5, 'Envoi courriel si suppression');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (6, 'Image de fond');
INSERT INTO BD5W6_424P.dbo.Preferences (NoPreference, Description) VALUES (7, 'Nombre de films par page');