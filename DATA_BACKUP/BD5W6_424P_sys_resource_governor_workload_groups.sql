CREATE TABLE sys.resource_governor_workload_groups
(
    group_id int NOT NULL,
    name sysname NOT NULL,
    importance sysname NOT NULL,
    request_max_memory_grant_percent int NOT NULL,
    request_max_cpu_time_sec int NOT NULL,
    request_memory_grant_timeout_sec int NOT NULL,
    max_dop int NOT NULL,
    group_max_requests int NOT NULL,
    pool_id int NOT NULL
);