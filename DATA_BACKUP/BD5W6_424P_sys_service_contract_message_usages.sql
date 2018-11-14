CREATE TABLE sys.service_contract_message_usages
(
    service_contract_id int NOT NULL,
    message_type_id int NOT NULL,
    is_sent_by_initiator bit NOT NULL,
    is_sent_by_target bit NOT NULL
);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (1, 3, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (2, 4, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (3, 6, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (3, 7, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (3, 8, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (3, 9, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (4, 10, 1, 1);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (5, 11, 1, 0);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (5, 12, 0, 1);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (5, 13, 0, 1);
INSERT INTO sys.service_contract_message_usages (service_contract_id, message_type_id, is_sent_by_initiator, is_sent_by_target) VALUES (6, 14, 1, 1);