CREATE TABLE sys.securable_classes
(
    class_desc nvarchar(60),
    class int
);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('DATABASE', 0);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('OBJECT', 1);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('TYPE', 6);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('SCHEMA', 3);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('XML SCHEMA COLLECTION', 10);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('ASSEMBLY', 5);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('USER', 4);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('ROLE', 4);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('APPLICATION ROLE', 4);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('MESSAGE TYPE', 15);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('CONTRACT', 16);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('SERVICE', 17);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('REMOTE SERVICE BINDING', 18);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('ROUTE', 19);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('FULLTEXT CATALOG', 23);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('FULLTEXT STOPLIST', 29);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('SYMMETRIC KEY', 24);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('CERTIFICATE', 25);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('SERVER', 100);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('ENDPOINT', 105);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('LOGIN', 101);
INSERT INTO sys.securable_classes (class_desc, class) VALUES ('ASYMMETRIC KEY', 26);