-- ----------------------------------------------------------
--  driver: ingres, generated: 2011-02-10 17:12:59
-- ----------------------------------------------------------
-- ----------------------------------------------------------
--  alter table ticket_index
-- ----------------------------------------------------------
ALTER TABLE ticket_index ALTER COLUMN queue VARCHAR(200);\g
-- ----------------------------------------------------------
--  alter table ticket_index
-- ----------------------------------------------------------
ALTER TABLE ticket_index ALTER COLUMN s_state VARCHAR(200);\g
-- ----------------------------------------------------------
--  alter table ticket_index
-- ----------------------------------------------------------
ALTER TABLE ticket_index ALTER COLUMN s_lock VARCHAR(200);\g
CREATE SEQUENCE gi_webservice_config_959;\g
CREATE TABLE gi_webservice_config (
    id INTEGER NOT NULL DEFAULT gi_webservice_config_959.NEXTVAL,
    name VARCHAR(200) NOT NULL,
    config LONG BYTE NOT NULL,
    valid_id SMALLINT NOT NULL,
    create_time TIMESTAMP NOT NULL,
    create_by INTEGER NOT NULL,
    change_time TIMESTAMP NOT NULL,
    change_by INTEGER NOT NULL,
    UNIQUE (name)
);\g
MODIFY gi_webservice_config TO btree unique ON id WITH unique_scope = statement;\g
ALTER TABLE gi_webservice_config ADD PRIMARY KEY ( id ) WITH index = base table structure;\g
CREATE SEQUENCE gi_webservice_config_history_347;\g
CREATE TABLE gi_webservice_config_history (
    id BIGINT NOT NULL DEFAULT gi_webservice_config_history_347.NEXTVAL,
    config_id INTEGER NOT NULL,
    config LONG BYTE NOT NULL,
    create_time TIMESTAMP NOT NULL,
    create_by INTEGER NOT NULL,
    change_time TIMESTAMP NOT NULL,
    change_by INTEGER NOT NULL
);\g
MODIFY gi_webservice_config_history TO btree unique ON id WITH unique_scope = statement;\g
ALTER TABLE gi_webservice_config_history ADD PRIMARY KEY ( id ) WITH index = base table structure;\g
CREATE SEQUENCE scheduler_task_list_294;\g
CREATE TABLE scheduler_task_list (
    id BIGINT NOT NULL DEFAULT scheduler_task_list_294.NEXTVAL,
    task_data LONG BYTE NOT NULL,
    create_time TIMESTAMP NOT NULL,
    create_by INTEGER NOT NULL
);\g
MODIFY scheduler_task_list TO btree unique ON id WITH unique_scope = statement;\g
ALTER TABLE scheduler_task_list ADD PRIMARY KEY ( id ) WITH index = base table structure;\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config ADD FOREIGN KEY (valid_id) REFERENCES valid(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (config_id) REFERENCES gi_webservice_config(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
ALTER TABLE gi_webservice_config_history ADD FOREIGN KEY (change_by) REFERENCES users(id);\g
ALTER TABLE scheduler_task_list ADD FOREIGN KEY (create_by) REFERENCES users(id);\g
