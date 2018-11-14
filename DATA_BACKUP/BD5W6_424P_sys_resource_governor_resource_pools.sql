CREATE TABLE sys.resource_governor_resource_pools
(
    pool_id int NOT NULL,
    name sysname NOT NULL,
    min_cpu_percent int NOT NULL,
    max_cpu_percent int NOT NULL,
    min_memory_percent int NOT NULL,
    max_memory_percent int NOT NULL
);