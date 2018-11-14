CREATE TABLE sys.certificates
(
    name sysname NOT NULL,
    certificate_id int NOT NULL,
    principal_id int,
    pvt_key_encryption_type char(2) NOT NULL,
    pvt_key_encryption_type_desc nvarchar(60),
    is_active_for_begin_dialog bit,
    issuer_name nvarchar(442),
    cert_serial_number nvarchar(64),
    sid varbinary(85),
    string_sid nvarchar(128),
    subject nvarchar(4000),
    expiry_date datetime,
    start_date datetime,
    thumbprint varbinary(32) NOT NULL,
    attested_by nvarchar(260),
    pvt_key_last_backup_date datetime
);