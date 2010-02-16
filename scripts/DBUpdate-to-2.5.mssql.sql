-- ----------------------------------------------------------
--  driver: mssql, generated: 2010-02-16 01:29:48
-- ----------------------------------------------------------
-- ----------------------------------------------------------
--  alter table ticket
-- ----------------------------------------------------------
ALTER TABLE ticket ADD archive_flag SMALLINT NULL;
GO
UPDATE ticket SET archive_flag = 0 WHERE archive_flag IS NULL;
GO
ALTER TABLE ticket ALTER COLUMN archive_flag SMALLINT NOT NULL;
GO
ALTER TABLE ticket ADD CONSTRAINT DF_ticket_archive_flag DEFAULT (0) FOR archive_flag;
CREATE INDEX ticket_create_time_unix ON ticket (create_time_unix);
CREATE INDEX ticket_create_time ON ticket (create_time);
CREATE INDEX ticket_until_time ON ticket (until_time);
CREATE INDEX ticket_archive_flag ON ticket (archive_flag);
-- ----------------------------------------------------------
--  insert into table ticket_history_type
-- ----------------------------------------------------------
INSERT INTO ticket_history_type (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ArchiveFlagUpdate', 1, 1, current_timestamp, 1, current_timestamp);
-- ----------------------------------------------------------
--  create table ticket_flag
-- ----------------------------------------------------------
CREATE TABLE ticket_flag (
    ticket_id BIGINT NOT NULL,
    ticket_key VARCHAR (50) NOT NULL,
    ticket_value VARCHAR (50) NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL
);
CREATE INDEX ticket_flag_ticket_id ON ticket_flag (ticket_id);
CREATE INDEX ticket_flag_ticket_id_create_by ON ticket_flag (ticket_id, create_by);
CREATE INDEX ticket_flag_ticket_id_ticket_key ON ticket_flag (ticket_id, ticket_key);
GO
EXECUTE sp_rename N'article_flag.article_flag', N'article_key', 'COLUMN';
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_article_flag_article_key' )
ALTER TABLE article_flag DROP CONSTRAINT DF_article_flag_article_key;
GO
UPDATE article_flag SET article_key = '' WHERE article_key IS NULL;
GO
ALTER TABLE article_flag ALTER COLUMN article_key VARCHAR (50) NOT NULL;
-- ----------------------------------------------------------
--  alter table article_flag
-- ----------------------------------------------------------
ALTER TABLE article_flag ADD article_value VARCHAR (50) NULL;
CREATE INDEX article_flag_article_id_create_by ON article_flag (article_id, create_by);
CREATE INDEX article_flag_article_id_article_key ON article_flag (article_id, article_key);
DROP INDEX article_flag.article_flag_create_by;
-- ----------------------------------------------------------
--  create table virtual_fs
-- ----------------------------------------------------------
CREATE TABLE virtual_fs (
    id BIGINT NOT NULL IDENTITY(1,1) ,
    filename VARCHAR (350) NOT NULL,
    backend VARCHAR (60) NOT NULL,
    backend_key VARCHAR (160) NOT NULL,
    create_time DATETIME NOT NULL,
    PRIMARY KEY(id)
);
CREATE INDEX virtual_fs_backend ON virtual_fs (backend);
CREATE INDEX virtual_fs_filename ON virtual_fs (filename);
-- ----------------------------------------------------------
--  create table virtual_fs_preferences
-- ----------------------------------------------------------
CREATE TABLE virtual_fs_preferences (
    virtual_fs_id BIGINT NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (350) NULL
);
CREATE INDEX virtual_fs_preferences_key_value ON virtual_fs_preferences (preferences_key, preferences_value);
CREATE INDEX virtual_fs_preferences_virtual_fs_id ON virtual_fs_preferences (virtual_fs_id);
-- ----------------------------------------------------------
--  create table virtual_fs_db
-- ----------------------------------------------------------
CREATE TABLE virtual_fs_db (
    id BIGINT NOT NULL IDENTITY(1,1) ,
    filename VARCHAR (350) NOT NULL,
    content TEXT NOT NULL,
    create_time DATETIME NOT NULL,
    PRIMARY KEY(id)
);
CREATE INDEX virtual_fs_db_filename ON virtual_fs_db (filename);
GO
EXECUTE sp_rename N'customer_user.salutation', N'title', 'COLUMN';
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_title' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_title;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_login' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_login;
GO
UPDATE customer_user SET login = '' WHERE login IS NULL;
GO
ALTER TABLE customer_user ALTER COLUMN login VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_customer_id' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_customer_id;
GO
UPDATE customer_user SET customer_id = '' WHERE customer_id IS NULL;
GO
ALTER TABLE customer_user ALTER COLUMN customer_id VARCHAR (150) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_zip' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_zip;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_city' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_city;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_user_country' )
ALTER TABLE customer_user DROP CONSTRAINT DF_customer_user_country;
GO
EXECUTE sp_rename N'users.salutation', N'title', 'COLUMN';
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_users_title' )
ALTER TABLE users DROP CONSTRAINT DF_users_title;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_users_login' )
ALTER TABLE users DROP CONSTRAINT DF_users_login;
GO
UPDATE users SET login = '' WHERE login IS NULL;
GO
ALTER TABLE users ALTER COLUMN login VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_valid_name' )
ALTER TABLE valid DROP CONSTRAINT DF_valid_name;
GO
UPDATE valid SET name = '' WHERE name IS NULL;
GO
ALTER TABLE valid ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_priority_name' )
ALTER TABLE ticket_priority DROP CONSTRAINT DF_ticket_priority_name;
GO
UPDATE ticket_priority SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_priority ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_type_name' )
ALTER TABLE ticket_type DROP CONSTRAINT DF_ticket_type_name;
GO
UPDATE ticket_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_lock_type_name' )
ALTER TABLE ticket_lock_type DROP CONSTRAINT DF_ticket_lock_type_name;
GO
UPDATE ticket_lock_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_lock_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_groups_name' )
ALTER TABLE groups DROP CONSTRAINT DF_groups_name;
GO
UPDATE groups SET name = '' WHERE name IS NULL;
GO
ALTER TABLE groups ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_roles_name' )
ALTER TABLE roles DROP CONSTRAINT DF_roles_name;
GO
UPDATE roles SET name = '' WHERE name IS NULL;
GO
ALTER TABLE roles ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_state_name' )
ALTER TABLE ticket_state DROP CONSTRAINT DF_ticket_state_name;
GO
UPDATE ticket_state SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_state ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_state_type_name' )
ALTER TABLE ticket_state_type DROP CONSTRAINT DF_ticket_state_type_name;
GO
UPDATE ticket_state_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_state_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_salutation_name' )
ALTER TABLE salutation DROP CONSTRAINT DF_salutation_name;
GO
UPDATE salutation SET name = '' WHERE name IS NULL;
GO
ALTER TABLE salutation ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_signature_name' )
ALTER TABLE signature DROP CONSTRAINT DF_signature_name;
GO
UPDATE signature SET name = '' WHERE name IS NULL;
GO
ALTER TABLE signature ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_system_address_comments' )
ALTER TABLE system_address DROP CONSTRAINT DF_system_address_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_follow_up_possible_name' )
ALTER TABLE follow_up_possible DROP CONSTRAINT DF_follow_up_possible_name;
GO
UPDATE follow_up_possible SET name = '' WHERE name IS NULL;
GO
ALTER TABLE follow_up_possible ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_queue_comments' )
ALTER TABLE queue DROP CONSTRAINT DF_queue_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_ticket_history_type_name' )
ALTER TABLE ticket_history_type DROP CONSTRAINT DF_ticket_history_type_name;
GO
UPDATE ticket_history_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE ticket_history_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_article_type_name' )
ALTER TABLE article_type DROP CONSTRAINT DF_article_type_name;
GO
UPDATE article_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE article_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_article_sender_type_name' )
ALTER TABLE article_sender_type DROP CONSTRAINT DF_article_sender_type_name;
GO
UPDATE article_sender_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE article_sender_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_standard_response_comments' )
ALTER TABLE standard_response DROP CONSTRAINT DF_standard_response_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_standard_response_name' )
ALTER TABLE standard_response DROP CONSTRAINT DF_standard_response_name;
GO
UPDATE standard_response SET name = '' WHERE name IS NULL;
GO
ALTER TABLE standard_response ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_standard_attachment_comments' )
ALTER TABLE standard_attachment DROP CONSTRAINT DF_standard_attachment_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_standard_attachment_content_type' )
ALTER TABLE standard_attachment DROP CONSTRAINT DF_standard_attachment_content_type;
GO
UPDATE standard_attachment SET content_type = '' WHERE content_type IS NULL;
GO
ALTER TABLE standard_attachment ALTER COLUMN content_type VARCHAR (250) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_standard_attachment_name' )
ALTER TABLE standard_attachment DROP CONSTRAINT DF_standard_attachment_name;
GO
UPDATE standard_attachment SET name = '' WHERE name IS NULL;
GO
ALTER TABLE standard_attachment ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_auto_response_type_comments' )
ALTER TABLE auto_response_type DROP CONSTRAINT DF_auto_response_type_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_auto_response_type_name' )
ALTER TABLE auto_response_type DROP CONSTRAINT DF_auto_response_type_name;
GO
UPDATE auto_response_type SET name = '' WHERE name IS NULL;
GO
ALTER TABLE auto_response_type ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_auto_response_comments' )
ALTER TABLE auto_response DROP CONSTRAINT DF_auto_response_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_auto_response_name' )
ALTER TABLE auto_response DROP CONSTRAINT DF_auto_response_name;
GO
UPDATE auto_response SET name = '' WHERE name IS NULL;
GO
ALTER TABLE auto_response ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_service_comments' )
ALTER TABLE service DROP CONSTRAINT DF_service_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_service_customer_user_customer_user_login' )
ALTER TABLE service_customer_user DROP CONSTRAINT DF_service_customer_user_customer_user_login;
GO
UPDATE service_customer_user SET customer_user_login = '' WHERE customer_user_login IS NULL;
GO
ALTER TABLE service_customer_user ALTER COLUMN customer_user_login VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_sla_comments' )
ALTER TABLE sla DROP CONSTRAINT DF_sla_comments;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_company_customer_id' )
ALTER TABLE customer_company DROP CONSTRAINT DF_customer_company_customer_id;
GO
UPDATE customer_company SET customer_id = '' WHERE customer_id IS NULL;
GO
ALTER TABLE customer_company ALTER COLUMN customer_id VARCHAR (150) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_customer_company_name' )
ALTER TABLE customer_company DROP CONSTRAINT DF_customer_company_name;
GO
UPDATE customer_company SET name = '' WHERE name IS NULL;
GO
ALTER TABLE customer_company ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_notification_event_content_type' )
ALTER TABLE notification_event DROP CONSTRAINT DF_notification_event_content_type;
GO
UPDATE notification_event SET content_type = '' WHERE content_type IS NULL;
GO
ALTER TABLE notification_event ALTER COLUMN content_type VARCHAR (250) NOT NULL;
-- ----------------------------------------------------------
--  alter table notification_event
-- ----------------------------------------------------------
ALTER TABLE notification_event ADD comments VARCHAR (250) NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_package_repository_name' )
ALTER TABLE package_repository DROP CONSTRAINT DF_package_repository_name;
GO
UPDATE package_repository SET name = '' WHERE name IS NULL;
GO
ALTER TABLE package_repository ALTER COLUMN name VARCHAR (200) NOT NULL;
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'DF_article_attachment_content_type' )
ALTER TABLE article_attachment DROP CONSTRAINT DF_article_attachment_content_type;
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE virtual_fs_preferences ADD CONSTRAINT FK_virtual_fs_preferences_virtual_fs_id_id FOREIGN KEY (virtual_fs_id) REFERENCES virtual_fs (id);
