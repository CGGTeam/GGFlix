CREATE TABLE sys.plan_guides
(
    plan_guide_id int NOT NULL,
    name sysname NOT NULL,
    create_date datetime NOT NULL,
    modify_date datetime NOT NULL,
    is_disabled bit NOT NULL,
    query_text nvarchar(max),
    scope_type tinyint NOT NULL,
    scope_type_desc nvarchar(60),
    scope_object_id int,
    scope_batch nvarchar(max),
    parameters nvarchar(max),
    hints nvarchar(max)
);