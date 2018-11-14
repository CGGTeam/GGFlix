CREATE TABLE sys.fulltext_index_fragments
(
    table_id int NOT NULL,
    fragment_id int NOT NULL,
    fragment_object_id int NOT NULL,
    timestamp binary(8) NOT NULL,
    status int NOT NULL,
    data_size bigint NOT NULL,
    row_count bigint NOT NULL
);