CREATE TABLE BD5W6_424P.dbo.EmpruntsFilms
(
    NoExemplaire int NOT NULL,
    NoUtilisateur int NOT NULL,
    DateEmprunt datetime NOT NULL,
    CONSTRAINT PK_EmpruntsFilms PRIMARY KEY (NoExemplaire, NoUtilisateur),
    CONSTRAINT FK_EmpruntsFilms_Exemplaires1 FOREIGN KEY (NoExemplaire) REFERENCES BD5W6_424P.dbo.Exemplaires (NoExemplaire),
    CONSTRAINT FK_EmpruntsFilms_Utilisateurs1 FOREIGN KEY (NoUtilisateur) REFERENCES BD5W6_424P.dbo.Utilisateurs (NoUtilisateur)
);