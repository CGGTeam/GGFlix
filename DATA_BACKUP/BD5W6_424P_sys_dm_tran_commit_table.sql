CREATE TABLE sys.dm_tran_commit_table
(
    commit_ts bigint,
    xdes_id bigint,
    commit_lbn bigint NOT NULL,
    commit_csn bigint NOT NULL,
    commit_time datetime NOT NULL
);