CREATE TABLE sys.trace_categories
(
    category_id smallint NOT NULL,
    name nvarchar(128),
    type tinyint NOT NULL
);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (1, 'Cursors', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (2, 'Database', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (3, 'Errors and Warnings', 2);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (4, 'Locks', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (5, 'Objects', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (6, 'Performance', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (7, 'Scans', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (8, 'Security Audit', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (9, 'Server', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (10, 'Sessions', 1);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (11, 'Stored Procedures', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (12, 'Transactions', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (13, 'TSQL', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (14, 'User configurable', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (15, 'OLEDB', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (16, 'Broker', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (17, 'Full text', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (18, 'Deprecation', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (19, 'Progress Report', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (20, 'CLR', 0);
INSERT INTO sys.trace_categories (category_id, name, type) VALUES (21, 'Query Notifications', 0);