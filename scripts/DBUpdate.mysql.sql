-- --
-- Update an existing OpenTRS database to the current state.
-- Copyright (C) 2001-2002 Martin Edenhofer <martin+code@otrs.org>
-- --
-- $Id: DBUpdate.mysql.sql,v 1.16 2002-12-25 09:31:39 martin Exp $
-- --
--
-- usage: cat DBUpdate.mysql.sql | mysql -f -u root otrs
--
-- --

-- --
-- 0.5 BETA 9 upgrate
-- --
-- update states
DELETE FROM ticket_history_type WHERE name = 'WatingForClose-';
DELETE FROM ticket_history_type WHERE name = 'WatingForClose+';
DELETE FROM ticket_history_type WHERE name = 'WatingForReminder';
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('SetPendingTime', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('SetPending', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_state (name, comment, valid_id, create_by, create_time, change_by, change_time)
    VALUES ('pending reminder', 'ticket is pending for agent reminder', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_state (name, comment, valid_id, create_by, create_time, change_by, change_time)
    VALUES ('pending auto close+', 'ticket is pending for automatic close', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_state (name, comment, valid_id, create_by, create_time, change_by, change_time)
    VALUES ('pending auto close-', 'ticket is pending for automatic close', 1, 1, current_timestamp, 1, current_timestamp);
-- update typo
UPDATE ticket_state SET name = 'closed successful', comment = 'ticket is closed succsessful' WHERE name = 'closed succsessful';
UPDATE ticket_state SET name = 'closed unsuccessful', comment = 'ticket is closed unsuccsessful' WHERE name = 'closed unsuccsessful';
UPDATE ticket_history_type SET name = 'Close successful' WHERE name = 'Close succsessful';
UPDATE ticket_history_type SET name = 'Close unsuccessful' WHERE name = 'Close unsuccsessful';
-- table for db loop protection backend module
CREATE TABLE ticket_loop_protection
(
    sent_to VARCHAR (250) NOT NULL,
    sent_date VARCHAR (150) NOT NULL,
    INDEX index_ticket_loop_protection_sent_to (sent_to),
    INDEX index_ticket_loop_protection_sent_date (sent_date)
);
-- charset for bulgarian translation
ALTER TABLE charset MODIFY 
    name VARCHAR (200) NOT NULL, 
    charset VARCHAR (50) NOT NULL, 
    comment VARCHAR (250)
;
INSERT INTO charset
    (name, charset, comment, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('Cyrillic Charset (Windows-1251)', 'Windows-1251', 'Windows-1251 - cp1251', 1, 1, current_timestamp, 1, current_timestamp);
-- table for attachments in db
CREATE TABLE article_attachment
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    article_id BIGINT NOT NULL,
    filename VARCHAR (250),
    content_type VARCHAR (250),
    content LONGBLOB, 
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX article_id (article_id)
  
);
-- table for plain emails in db
CREATE TABLE article_plain
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    article_id BIGINT NOT NULL,
    body MEDIUMTEXT,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX article_id (article_id)

);
-- customer preferences
ALTER TABLE customer_preferences MODIFY
    user_id VARCHAR (200) NOT NULL
;
ALTER TABLE customer_preferences MODIFY
    preferences_key VARCHAR (150) NOT NULL
;

-- --
-- 0.5 BETA 8 upgrate
-- --
-- add ticket_index index
ALTER TABLE ticket_index ADD INDEX index_ticket_id (ticket_id);
-- customer_user
CREATE TABLE customer_user
(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    login VARCHAR (80) NOT NULL,
    email VARCHAR (120) NOT NULL,
    customer_id VARCHAR (120) NOT NULL,
    pw VARCHAR (20) NOT NULL,
    salutation VARCHAR (20),
    first_name VARCHAR (40) NOT NULL,
    last_name VARCHAR (40) NOT NULL,
    valid_id SMALLINT NOT NULL,
    comment VARCHAR (120) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (login)
);
-- customer preferences
CREATE TABLE customer_preferences
(
    user_id INTEGER NOT NULL,
    preferences_key VARCHAR (100) NOT NULL,
    preferences_value VARCHAR (250),
    INDEX index_customer_preferences_user_id (user_id)
);
-- add ticket_history index
ALTER TABLE ticket_history ADD INDEX ticket_history_create_time (create_time);

-- --
-- BETA 7 upgrate
-- --
-- new ticket_index table (for ticket index feature)
CREATE TABLE ticket_index
(
    ticket_id BIGINT NOT NULL,
    queue_id INTEGER NOT NULL,
    queue VARCHAR (70) NOT NULL,
    group_id INTEGER NOT NULL,
    s_lock VARCHAR (70) NOT NULL,
    s_state VARCHAR (70) NOT NULL,
    create_time_unix BIGINT NOT NULL
);

-- new time accounting table
CREATE TABLE time_accounting
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    ticket_id BIGINT NOT NULL,
    article_id BIGINT,
    time_unit SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    INDEX time_accouning_ticket_id(ticket_id)

);
-- new ticket history type
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('TimeAccounting', 1, 1, current_timestamp, 1, current_timestamp);

-- new article types
INSERT INTO article_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('email-notification-ext', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO article_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('email-notification-int', 1, 1, current_timestamp, 1, current_timestamp);

-- new ticket history types
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('Forward', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('Bounce', 1, 1, current_timestamp, 1, current_timestamp);

-- content_type to display the right charset and it is also used
-- for utf-8 support.
ALTER TABLE article ADD a_content_type VARCHAR (100);

-- --
-- Beta5 bug fixed (thanks to Heiko Baumann)
-- --
ALTER TABLE user_preferences DROP PRIMARY KEY;
ALTER TABLE user_preferences ADD INDEX index_user_preferences_user_id (user_id);

-- --
-- set db to BETA5 state
-- --
-- modify table ticket
ALTER TABLE ticket ADD ticket_answered SMALLINT NOT NULL DEFAULT 0;

-- add ticket_history_type
INSERT INTO ticket_history_type
    (name, valid_id, create_by, change_by, change_time)
VALUES
    ('SendAgentNotification', 1, 1, 1, current_timestamp); 

-- added frech language
INSERT INTO language
    (language, valid_id, create_by, change_by, change_time)
    VALUES
    ('French', 1, 1, 1, current_timestamp);

-- add article_type
INSERT INTO article_type
        (name, valid_id, create_by, change_by, change_time)
        VALUES
        ('email-external', 1, 1, 1, current_timestamp);
INSERT INTO article_type
        (name, valid_id, create_by, change_by, change_time)
        VALUES
        ('email-internal', 1, 1, 1, current_timestamp);

-- create user_preferences
CREATE TABLE user_preferences
(
    user_id INTEGER NOT NULL,
    preferences_key VARCHAR (100) NOT NULL,
    preferences_value VARCHAR (250),
    PRIMARY KEY(user_id) 
);  

-- create session table
CREATE TABLE session
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    session_id VARCHAR (120) NOT NULL,
    value MEDIUMTEXT NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (session_id),
    INDEX index_session_id (session_id)
);

--
-- for BETA1-3
--
-- update message id varchar to 250
ALTER TABLE article MODIFY a_message_id VARCHAR (250);

