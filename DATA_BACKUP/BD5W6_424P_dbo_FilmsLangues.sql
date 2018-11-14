CREATE TABLE BD5W6_424P.dbo.FilmsLangues
(
    NoFilm int NOT NULL,
    NoLangue int NOT NULL,
    CONSTRAINT PK_FilmsLangues PRIMARY KEY (NoFilm, NoLangue),
    CONSTRAINT FK_FilmsLangues_Films FOREIGN KEY (NoFilm) REFERENCES BD5W6_424P.dbo.Films (NoFilm),
    CONSTRAINT FK_FilmsLangues_Langues FOREIGN KEY (NoLangue) REFERENCES BD5W6_424P.dbo.Langues (NoLangue)
);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181001, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181001, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181001, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181002, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181003, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181003, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181003, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181004, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181005, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181006, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181006, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181006, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181007, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181008, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181009, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181010, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181011, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181011, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181011, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181012, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181013, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181014, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181101, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181102, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181102, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181102, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181103, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181104, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181104, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181104, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181105, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181105, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181105, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181106, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181107, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181107, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181107, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181108, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181109, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181110, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181111, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181112, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181112, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181112, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181113, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181115, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181116, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181117, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181117, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181117, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181118, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181119, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181201, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181201, 2);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181201, 3);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181202, 1);
INSERT INTO BD5W6_424P.dbo.FilmsLangues (NoFilm, NoLangue) VALUES (181203, 1);