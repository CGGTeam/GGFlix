CREATE TABLE BD5W6_424P.dbo.Utilisateurs
(
    NoUtilisateur int PRIMARY KEY NOT NULL,
    NomUtilisateur nvarchar(10) NOT NULL,
    Courriel nvarchar(50) NOT NULL,
    MotPasse int NOT NULL,
    TypeUtilisateur nchar(1) NOT NULL,
    CONSTRAINT FK_Utilisateurs_TypesUtilisateur FOREIGN KEY (TypeUtilisateur) REFERENCES BD5W6_424P.dbo.TypesUtilisateur (TypeUtilisateur)
);
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (1, 'admin     ', 'm.airouche@cgodin.qc.ca', 99999, 'A');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (2, 'helene    ', 'helene@gmail.com', 11111, 'S');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (3, 'lucille   ', 'lucille@gmail.com', 22222, 'U');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (4, 'louismarie', 'louis.marie@gmail.com', 33333, 'U');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (5, 'rejean    ', 'rejean@gmail.com', 44444, 'U');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (6, 'christian ', 'christian@gmail.com', 55555, 'U');
INSERT INTO BD5W6_424P.dbo.Utilisateurs (NoUtilisateur, NomUtilisateur, Courriel, MotPasse, TypeUtilisateur) VALUES (7, 'jose      ', 'jose@gmail.com', 66666, 'U');