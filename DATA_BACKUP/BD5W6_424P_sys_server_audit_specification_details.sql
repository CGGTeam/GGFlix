CREATE TABLE sys.server_audit_specification_details
(
    server_specification_id int NOT NULL,
    audit_action_id char(4) NOT NULL,
    audit_action_name nvarchar(60),
    class tinyint NOT NULL,
    class_desc nvarchar(60),
    major_id int NOT NULL,
    minor_id int NOT NULL,
    audited_principal_id int NOT NULL,
    audited_result nvarchar(60),
    is_group bit
);