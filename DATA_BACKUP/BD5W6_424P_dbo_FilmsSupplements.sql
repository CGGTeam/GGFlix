CREATE TABLE BD5W6_424P.dbo.FilmsSupplements
(
    NoFilm int NOT NULL,
    NoSupplement int NOT NULL,
    CONSTRAINT PK_FilmsSupplements PRIMARY KEY (NoFilm, NoSupplement),
    CONSTRAINT FK_FilmsSupplements_Films FOREIGN KEY (NoFilm) REFERENCES BD5W6_424P.dbo.Films (NoFilm),
    CONSTRAINT FK_FilmsSupplements_Supplements FOREIGN KEY (NoSupplement) REFERENCES BD5W6_424P.dbo.Supplements (NoSupplement)
);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181001, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181001, 13);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181002, 6);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181002, 13);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181002, 14);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181003, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181003, 9);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181003, 12);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181004, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181006, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181006, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181006, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181008, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181008, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181008, 14);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181011, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181011, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181011, 11);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181012, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181012, 13);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181012, 15);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181013, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181013, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181013, 8);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181014, 8);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181014, 10);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181014, 15);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181105, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181105, 5);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181105, 10);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181107, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181107, 8);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181112, 6);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181114, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181114, 6);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181114, 9);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181117, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181117, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181117, 14);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181118, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181118, 4);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181118, 6);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181201, 1);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181201, 2);
INSERT INTO BD5W6_424P.dbo.FilmsSupplements (NoFilm, NoSupplement) VALUES (181201, 8);