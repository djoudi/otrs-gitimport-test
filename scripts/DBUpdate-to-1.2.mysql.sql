-- --
-- Update an existing OTRS database from 1.1 to 1.2 
-- Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
-- --
-- $Id: DBUpdate-to-1.2.mysql.sql,v 1.7 2004-01-22 19:29:09 martin Exp $
-- --
--
-- usage: cat DBUpdate-to-1.1.mysql.sql | mysql -f -u root otrs
--
-- --

--
-- new ticket history stuff
--
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('EmailAgent', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('EmailCustomer', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('WebRequestCustomer', 1, 1, current_timestamp, 1, current_timestamp);

--
-- for new user serach profiles
--
CREATE TABLE search_profile
(
    login varchar (200) NOT NULL,
    profile_name varchar (200) NOT NULL,
    profile_key varchar (200) NOT NULL,
    profile_value varchar (200) NOT NULL
);

--
-- add move/create/owner/priority/... options to group_user table
--
ALTER TABLE group_user ADD permission_key VARCHAR (20);
ALTER TABLE group_user ADD permission_value SMALLINT NOT NULL;

UPDATE group_user SET permission_key = 'ro', permission_value = 1 WHERE permission_read = 1;
UPDATE group_user SET permission_key = 'rw', permission_value = 1 WHERE permission_write = 1;
UPDATE group_user SET permission_key = 'rw', permission_value = 1 WHERE permission_write = 0 and permission_read = 0;

ALTER TABLE group_user DROP permission_read;
ALTER TABLE group_user DROP permission_write;

--
-- create customer user <-> group relation
--
CREATE TABLE group_customer_user
(
    user_id VARCHAR (30),
    group_id INTEGER NOT NULL,
    permission_key VARCHAR (20),
    permission_value SMALLINT NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL
);

--
-- add more free text col. to ticket table 
--
ALTER TABLE ticket ADD freekey3 VARCHAR (80);
ALTER TABLE ticket ADD freetext3 VARCHAR (150);
ALTER TABLE ticket ADD freekey4 VARCHAR (80);
ALTER TABLE ticket ADD freetext4 VARCHAR (150);
ALTER TABLE ticket ADD freekey5 VARCHAR (80);
ALTER TABLE ticket ADD freetext5 VARCHAR (150);
ALTER TABLE ticket ADD freekey6 VARCHAR (80);
ALTER TABLE ticket ADD freetext6 VARCHAR (150);
ALTER TABLE ticket ADD freekey7 VARCHAR (80);
ALTER TABLE ticket ADD freetext7 VARCHAR (150);
ALTER TABLE ticket ADD freekey8 VARCHAR (80);
ALTER TABLE ticket ADD freetext8 VARCHAR (150);

--
-- faq stuff
--
INSERT INTO groups
    (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES 
    ('faq',  1, 1, current_timestamp, 1, current_timestamp);

CREATE TABLE faq_item
(
    id INTEGER NOT NULL AUTO_INCREMENT,
    f_name VARCHAR (200) NOT NULL,
    f_language_id SMALLINT NOT NULL,
    f_subject VARCHAR (200),
    state_id SMALLINT NOT NULL,
    category_id SMALLINT NOT NULL,
    f_keywords MEDIUMTEXT,
    f_field1 MEDIUMTEXT,
    f_field2 MEDIUMTEXT,
    f_field3 MEDIUMTEXT,
    f_field4 MEDIUMTEXT, 
    f_field5 MEDIUMTEXT,
    f_field6 MEDIUMTEXT, 
    free_key1 VARCHAR (80),
    free_value1 VARCHAR (200),
    free_key2 VARCHAR (80),
    free_value2 VARCHAR (200),
    free_key3 VARCHAR (80),
    free_value3 VARCHAR (200),
    free_key4 VARCHAR (80),
    free_value4 VARCHAR (200),
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (f_name)
);

CREATE TABLE faq_language
(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (name)
);

CREATE TABLE faq_history
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    item_id INTEGER NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE faq_category
(   
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    comments VARCHAR (220) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (name)
);  

CREATE TABLE faq_state
(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    type_id SMALLINT NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (name)
);

CREATE TABLE faq_state_type
(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (name)
);

INSERT INTO faq_item
  (f_name, f_language_id, f_subject, state_id, category_id, f_field1, f_field2, f_field3, create_time, create_by, change_time, change_by)
  VALUES
  ('welcome', 1, 'Welcome!', 1, 1, 'sympthom...', 'problem...', 'solution...', current_timestamp, 1, current_timestamp, 1);

INSERT INTO faq_history
  (name, item_id, create_time, create_by, change_time, change_by)
  VALUES
  ('Created', 1, current_timestamp, 1, current_timestamp, 1);

INSERT INTO faq_language (name) VALUES ('en');
INSERT INTO faq_language (name) VALUES ('de');
INSERT INTO faq_language (name) VALUES ('es');
INSERT INTO faq_language (name) VALUES ('fr');

INSERT INTO faq_category
  (name, comments, create_time, create_by, change_time, change_by)
  VALUES
  ('all', 'default category', current_timestamp, 1, current_timestamp, 1);

INSERT INTO faq_state (name, type_id) VALUES ('internal (agent)', 1);
INSERT INTO faq_state (name, type_id) VALUES ('external (customer)', 2);
INSERT INTO faq_state (name, type_id) VALUES ('public (all)', 3);

INSERT INTO faq_state_type (name) VALUES ('internal');
INSERT INTO faq_state_type (name) VALUES ('external');
INSERT INTO faq_state_type (name) VALUES ('public');

-- 
-- auto_response update
--
ALTER TABLE auto_response ADD charset VARCHAR (80) NOT NULL;
UPDATE auto_response SET charset = 'ISO-8859-1' WHERE charset = '';
