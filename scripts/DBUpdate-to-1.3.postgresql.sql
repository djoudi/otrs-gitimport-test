-- --
-- Update an existing OTRS database from 1.2 to 1.3
-- Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
-- --
-- $Id: DBUpdate-to-1.3.postgresql.sql,v 1.13 2004-09-27 17:20:09 martin Exp $
-- --
--
-- usage: cat DBUpdate-to-1.1.postgresql.sql | psql otrs
--
-- --

--
-- drop not used ticket log types
--
DELETE FROM ticket_history_type WHERE name = 'WatingForClose+';
DELETE FROM ticket_history_type WHERE name = 'WatingForClose-';
DELETE FROM ticket_history_type WHERE name = 'WatingForReminder';
DELETE FROM ticket_history_type WHERE name = 'Open';
DELETE FROM ticket_history_type WHERE name = 'Reopen';
DELETE FROM ticket_history_type WHERE name = 'Close unsuccessful';
DELETE FROM ticket_history_type WHERE name = 'Close successful';
DELETE FROM ticket_history_type WHERE name = 'SetPending';
--
-- new ticket history stuff
--
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('TicketLinkAdd', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
        (name, valid_id, create_by, create_time, change_by, change_time)
        VALUES
        ('TicketLinkDelete', 1, 1, current_timestamp, 1, current_timestamp);

--
-- add more attachment info
--
ALTER TABLE article_attachment ADD content_size VARCHAR (30);

--
-- change max customer user login size
--
ALTER TABLE group_customer_user ADD COLUMN user_id_new varchar(1000);
UPDATE group_customer_user SET user_id_new = user_id;
ALTER TABLE group_customer_user DROP COLUMN user_id;
ALTER TABLE group_customer_user RENAME COLUMN user_id_new TO user_id;


--
-- postmaster_filter
--
CREATE TABLE postmaster_filter
(
    f_name varchar (200) NOT NULL,
    f_type varchar (20) NOT NULL,
    f_key varchar (200) NOT NULL,
    f_value varchar (200) NOT NULL
);

--
-- generic_agent_jobs
--
CREATE TABLE generic_agent_jobs
(
    job_name varchar (200) NOT NULL,
    job_key varchar (200) NOT NULL,
    job_value varchar (200) NOT NULL
);

--
-- change size for message id
--
ALTER TABLE article ADD COLUMN a_message_id_new varchar(1000);
UPDATE article SET a_message_id_new = a_message_id;
ALTER TABLE article DROP COLUMN a_message_id;
ALTER TABLE article RENAME COLUMN a_message_id_new TO a_message_id;

--
-- index for message id
--
CREATE INDEX article_message_id ON article (a_message_id);

--
-- ticket_history
--
ALTER TABLE ticket_history RENAME COLUMN system_queue_id TO queue_id;
ALTER TABLE ticket_history ADD COLUMN owner_id INTEGER;
ALTER TABLE ticket_history ADD COLUMN priority_id SMALLINT;
ALTER TABLE ticket_history ADD COLUMN state_id SMALLINT;

--
-- queue, add default sign key option
--
ALTER TABLE queue ADD COLUMN default_sign_key varchar (100);

--
-- customer notifications (en)
--
INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::QueueUpdate', 'iso-8859-1', 'en', 'New Queue "<OTRS_CUSTOMER_Queue>"!', '*** THIS IS JUST A NOTE ***The queue of your ticket "<OTRS_TICKET_NUMBER>" has been changed by"<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname>" to "<OTRS_CUSTOMER_Queue>".<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Your OTRS Notification Master*** THIS IS JUST A NOTE ***', current_timestamp, 1, current_timestamp, 1);

INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::OwnerUpdate', 'iso-8859-1', 'en', 'New Owner "<OTRS_CUSTOMER_UserFirstname>"!', '*** THIS IS JUST A NOTE ***The owner of your ticket "<OTRS_TICKET_NUMBER>" has been changed to"<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname>.<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Your OTRS Notification Master*** THIS IS JUST A NOTE ***', current_timestamp, 1, current_timestamp, 1);

INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::StateUpdate', 'iso-8859-1', 'en', 'New State "<OTRS_CUSTOMER_State>"!', '*** THIS IS JUST A NOTE ***The state of your ticket "<OTRS_TICKET_NUMBER>" has been changed by"<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname>" to "<OTRS_CUSTOMER_State>".<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Your OTRS Notification Master*** THIS IS JUST A NOTE ***', current_timestamp, 1, current_timestamp, 1);

--
-- customer notifications (de)
--
INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::QueueUpdate', 'iso-8859-1', 'de', 'Neue Queue "<OTRS_CUSTOMER_Queue>"!', '*** NUR EINE INFO ***Die Queue Ihres Tickets "<OTRS_TICKET_NUMBER>" hat "<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname>" auf "<OTRS_CUSTOMER_Queue>" geaendert.<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Dein OTRS Benachrichtigungs-Master*** NUR EINE INFO ***', current_timestamp, 1, current_timestamp, 1);

INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::OwnerUpdate', 'iso-8859-1', 'de', 'Neuer Besitzer "<OTRS_CUSTOMER_UserFirstname>"!', '*** NUR EINE INFO ***Der Besitzer des Tickets "<OTRS_TICKET_NUMBER>" hat sich auf "<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname> geaendert.<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Dein OTRS Benachrichtigungs-Master*** NUR EINE INFO ***', current_timestamp, 1, current_timestamp, 1);

INSERT INTO notifications
  (notification_type, notification_charset, notification_language, subject, text, create_time, create_by, change_time, change_by)
  VALUES
  ('Customer::StateUpdate', 'iso-8859-1', 'de', 'Neuer Status "<OTRS_CUSTOMER_State>"!', '*** NUR EINE INFO ***Der Status des Tickets "<OTRS_TICKET_NUMBER>" hat sich durch "<OTRS_CUSTOMER_UserFirstname> <OTRS_CUSTOMER_UserLastname>" auf "<OTRS_CUSTOMER_State>" veraendert.<OTRS_CONFIG_HttpType>://<OTRS_CONFIG_FQDN>/<OTRS_CONFIG_ScriptAlias>index.pl?Action=CustomerZoom&TicketID=<OTRS_TICKET_ID>Dein OTRS Benachrichtigungs-Master*** NUR EINE INFO ***', current_timestamp, 1, current_timestamp, 1);

