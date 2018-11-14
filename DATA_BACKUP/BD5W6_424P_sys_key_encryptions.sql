CREATE TABLE sys.key_encryptions
(
    key_id int NOT NULL,
    thumbprint varbinary(32),
    crypt_type char(4) NOT NULL,
    crypt_type_desc nvarchar(60),
    crypt_property varbinary(max)
);