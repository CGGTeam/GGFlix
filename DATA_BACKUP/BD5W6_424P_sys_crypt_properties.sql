CREATE TABLE sys.crypt_properties
(
    class tinyint NOT NULL,
    class_desc nvarchar(60),
    major_id int NOT NULL,
    thumbprint varbinary(32) NOT NULL,
    crypt_type char(4) NOT NULL,
    crypt_type_desc nvarchar(60),
    crypt_property varbinary(max) NOT NULL
);