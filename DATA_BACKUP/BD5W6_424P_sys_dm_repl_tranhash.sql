CREATE TABLE sys.dm_repl_tranhash
(
    buckets int,
    hashed_trans int,
    completed_trans int,
    compensated_trans int,
    first_begin_lsn nvarchar(24),
    last_commit_lsn nvarchar(24)
);