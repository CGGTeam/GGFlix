CREATE TABLE BD5W6_424P.dbo.Exemplaires
(
    NoExemplaire int PRIMARY KEY NOT NULL,
    NoUtilisateurProprietaire int NOT NULL,
    CONSTRAINT FK_Exemplaires_Utilisateurs2 FOREIGN KEY (NoUtilisateurProprietaire) REFERENCES BD5W6_424P.dbo.Utilisateurs (NoUtilisateur)
);