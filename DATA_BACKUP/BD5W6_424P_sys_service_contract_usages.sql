CREATE TABLE sys.service_contract_usages
(
    service_id int NOT NULL,
    service_contract_id int NOT NULL
);
INSERT INTO sys.service_contract_usages (service_id, service_contract_id) VALUES (3, 4);
INSERT INTO sys.service_contract_usages (service_id, service_contract_id) VALUES (3, 5);