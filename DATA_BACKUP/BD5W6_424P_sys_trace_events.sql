CREATE TABLE sys.trace_events
(
    trace_event_id smallint NOT NULL,
    category_id smallint NOT NULL,
    name nvarchar(128)
);
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (10, 11, 'RPC:Completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (11, 11, 'RPC:Starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (12, 13, 'SQL:BatchCompleted');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (13, 13, 'SQL:BatchStarting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (14, 8, 'Audit Login');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (15, 8, 'Audit Logout');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (16, 3, 'Attention');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (17, 10, 'ExistingConnection');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (18, 8, 'Audit Server Starts And Stops');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (19, 12, 'DTCTransaction');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (20, 8, 'Audit Login Failed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (21, 3, 'EventLog');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (22, 3, 'ErrorLog');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (23, 4, 'Lock:Released');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (24, 4, 'Lock:Acquired');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (25, 4, 'Lock:Deadlock');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (26, 4, 'Lock:Cancel');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (27, 4, 'Lock:Timeout');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (28, 6, 'Degree of Parallelism');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (33, 3, 'Exception');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (34, 11, 'SP:CacheMiss');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (35, 11, 'SP:CacheInsert');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (36, 11, 'SP:CacheRemove');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (37, 11, 'SP:Recompile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (38, 11, 'SP:CacheHit');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (40, 13, 'SQL:StmtStarting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (41, 13, 'SQL:StmtCompleted');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (42, 11, 'SP:Starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (43, 11, 'SP:Completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (44, 11, 'SP:StmtStarting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (45, 11, 'SP:StmtCompleted');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (46, 5, 'Object:Created');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (47, 5, 'Object:Deleted');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (50, 12, 'SQLTransaction');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (51, 7, 'Scan:Started');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (52, 7, 'Scan:Stopped');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (53, 1, 'CursorOpen');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (54, 12, 'TransactionLog');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (55, 3, 'Hash Warning');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (58, 6, 'Auto Stats');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (59, 4, 'Lock:Deadlock Chain');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (60, 4, 'Lock:Escalation');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (61, 15, 'OLEDB Errors');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (67, 3, 'Execution Warnings');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (68, 6, 'Showplan Text (Unencoded)');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (69, 3, 'Sort Warnings');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (70, 1, 'CursorPrepare');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (71, 13, 'Prepare SQL');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (72, 13, 'Exec Prepared SQL');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (73, 13, 'Unprepare SQL');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (74, 1, 'CursorExecute');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (75, 1, 'CursorRecompile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (76, 1, 'CursorImplicitConversion');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (77, 1, 'CursorUnprepare');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (78, 1, 'CursorClose');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (79, 3, 'Missing Column Statistics');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (80, 3, 'Missing Join Predicate');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (81, 9, 'Server Memory Change');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (82, 14, 'UserConfigurable:0');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (83, 14, 'UserConfigurable:1');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (84, 14, 'UserConfigurable:2');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (85, 14, 'UserConfigurable:3');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (86, 14, 'UserConfigurable:4');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (87, 14, 'UserConfigurable:5');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (88, 14, 'UserConfigurable:6');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (89, 14, 'UserConfigurable:7');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (90, 14, 'UserConfigurable:8');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (91, 14, 'UserConfigurable:9');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (92, 2, 'Data File Auto Grow');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (93, 2, 'Log File Auto Grow');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (94, 2, 'Data File Auto Shrink');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (95, 2, 'Log File Auto Shrink');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (96, 6, 'Showplan Text');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (97, 6, 'Showplan All');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (98, 6, 'Showplan Statistics Profile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (100, 11, 'RPC Output Parameter');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (102, 8, 'Audit Database Scope GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (103, 8, 'Audit Schema Object GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (104, 8, 'Audit Addlogin Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (105, 8, 'Audit Login GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (106, 8, 'Audit Login Change Property Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (107, 8, 'Audit Login Change Password Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (108, 8, 'Audit Add Login to Server Role Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (109, 8, 'Audit Add DB User Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (110, 8, 'Audit Add Member to DB Role Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (111, 8, 'Audit Add Role Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (112, 8, 'Audit App Role Change Password Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (113, 8, 'Audit Statement Permission Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (114, 8, 'Audit Schema Object Access Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (115, 8, 'Audit Backup/Restore Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (116, 8, 'Audit DBCC Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (117, 8, 'Audit Change Audit Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (118, 8, 'Audit Object Derived Permission Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (119, 15, 'OLEDB Call Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (120, 15, 'OLEDB QueryInterface Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (121, 15, 'OLEDB DataRead Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (122, 6, 'Showplan XML');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (123, 6, 'SQL:FullTextQuery');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (124, 16, 'Broker:Conversation');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (125, 18, 'Deprecation Announcement');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (126, 18, 'Deprecation Final Support');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (127, 3, 'Exchange Spill Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (128, 8, 'Audit Database Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (129, 8, 'Audit Database Object Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (130, 8, 'Audit Database Principal Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (131, 8, 'Audit Schema Object Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (132, 8, 'Audit Server Principal Impersonation Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (133, 8, 'Audit Database Principal Impersonation Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (134, 8, 'Audit Server Object Take Ownership Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (135, 8, 'Audit Database Object Take Ownership Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (136, 16, 'Broker:Conversation Group');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (137, 3, 'Blocked process report');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (138, 16, 'Broker:Connection');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (139, 16, 'Broker:Forwarded Message Sent');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (140, 16, 'Broker:Forwarded Message Dropped');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (141, 16, 'Broker:Message Classify');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (142, 16, 'Broker:Transmission');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (143, 16, 'Broker:Queue Disabled');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (144, 16, 'Broker:Mirrored Route State Changed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (146, 6, 'Showplan XML Statistics Profile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (148, 4, 'Deadlock graph');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (149, 16, 'Broker:Remote Message Acknowledgement');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (150, 9, 'Trace File Close');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (151, 2, 'Database Mirroring Connection');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (152, 8, 'Audit Change Database Owner');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (153, 8, 'Audit Schema Object Take Ownership Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (154, 8, 'Audit Database Mirroring Login');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (155, 17, 'FT:Crawl Started');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (156, 17, 'FT:Crawl Stopped');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (157, 17, 'FT:Crawl Aborted');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (158, 8, 'Audit Broker Conversation');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (159, 8, 'Audit Broker Login');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (160, 16, 'Broker:Message Undeliverable');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (161, 16, 'Broker:Corrupted Message');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (162, 3, 'User Error Message');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (163, 16, 'Broker:Activation');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (164, 5, 'Object:Altered');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (165, 6, 'Performance statistics');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (166, 13, 'SQL:StmtRecompile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (167, 2, 'Database Mirroring State Change');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (168, 6, 'Showplan XML For Query Compile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (169, 6, 'Showplan All For Query Compile');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (170, 8, 'Audit Server Scope GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (171, 8, 'Audit Server Object GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (172, 8, 'Audit Database Object GDR Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (173, 8, 'Audit Server Operation Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (175, 8, 'Audit Server Alter Trace Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (176, 8, 'Audit Server Object Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (177, 8, 'Audit Server Principal Management Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (178, 8, 'Audit Database Operation Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (180, 8, 'Audit Database Object Access Event');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (181, 12, 'TM: Begin Tran starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (182, 12, 'TM: Begin Tran completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (183, 12, 'TM: Promote Tran starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (184, 12, 'TM: Promote Tran completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (185, 12, 'TM: Commit Tran starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (186, 12, 'TM: Commit Tran completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (187, 12, 'TM: Rollback Tran starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (188, 12, 'TM: Rollback Tran completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (189, 4, 'Lock:Timeout (timeout > 0)');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (190, 19, 'Progress Report: Online Index Operation');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (191, 12, 'TM: Save Tran starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (192, 12, 'TM: Save Tran completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (193, 3, 'Background Job Error');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (194, 15, 'OLEDB Provider Information');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (195, 9, 'Mount Tape');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (196, 20, 'Assembly Load');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (198, 13, 'XQuery Static Type');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (199, 21, 'QN: Subscription');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (200, 21, 'QN: Parameter table');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (201, 21, 'QN: Template');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (202, 21, 'QN: Dynamics');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (212, 3, 'Bitmap Warning');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (213, 3, 'Database Suspect Data Page');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (214, 3, 'CPU threshold exceeded');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (215, 10, 'PreConnect:Starting');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (216, 10, 'PreConnect:Completed');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (217, 6, 'Plan Guide Successful');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (218, 6, 'Plan Guide Unsuccessful');
INSERT INTO sys.trace_events (trace_event_id, category_id, name) VALUES (235, 8, 'Audit Fulltext');