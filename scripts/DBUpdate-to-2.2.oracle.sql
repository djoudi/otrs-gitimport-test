-- --
-- Update an existing OTRS database from 2.1 to 2.2
-- Copyright (C) 2001-2006 OTRS GmbH, http://otrs.org/
-- --
-- $Id: DBUpdate-to-2.2.oracle.sql,v 1.6 2007-03-05 02:26:29 martin Exp $
-- --
--
-- usage: cat DBUpdate-to-2.2.oracle.sql | sqlplus "user/password"
--
-- --

--
-- ticket
--
ALTER TABLE ticket ADD freetime3 DATE;
ALTER TABLE ticket ADD freetime4 DATE;
ALTER TABLE ticket ADD freetime5 DATE;
ALTER TABLE ticket ADD freetime6 DATE;
ALTER TABLE ticket ADD type_id INTEGER;
ALTER TABLE ticket ADD service_id INTEGER;
ALTER TABLE ticket ADD sla_id INTEGER;

--
-- ticket_priority
--
ALTER TABLE ticket_priority ADD valid_id INTEGER;
UPDATE ticket_priority SET valid_id = 1;

--
-- ticket_type
--
CREATE TABLE ticket_type (
    id NUMBER (5, 0) NOT NULL,
    name VARCHAR2 (50) NOT NULL,
    valid_id NUMBER (5, 0) NOT NULL,
    create_time DATE NOT NULL,
    create_by NUMBER NOT NULL,
    change_time DATE NOT NULL,
    change_by NUMBER NOT NULL,
    CONSTRAINT ticket_type_U_1 UNIQUE (name)
);
ALTER TABLE ticket_type ADD CONSTRAINT ticket_type_PK PRIMARY KEY (id);
DROP SEQUENCE ticket_type_seq;
CREATE SEQUENCE ticket_type_seq;
CREATE OR REPLACE TRIGGER ticket_type_s_t
before insert on ticket_type
for each row
begin
    select ticket_type_seq.nextval
    into :new.id
    from dual;
end;
/
--;
INSERT INTO ticket_type
    (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('default', 1, 1, current_timestamp, 1, current_timestamp);

--
-- ticket_history
--
ALTER TABLE ticket_history ADD type_id INTEGER;

--
-- ticket_history_type
--
INSERT INTO ticket_history_type
    (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('TypeUpdate', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
    (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('ServiceUpdate', 1, 1, current_timestamp, 1, current_timestamp);
INSERT INTO ticket_history_type
    (name, valid_id, create_by, create_time, change_by, change_time)
    VALUES
    ('SLAUpdate', 1, 1, current_timestamp, 1, current_timestamp);

--
-- service
--
CREATE TABLE service (
    id NUMBER NOT NULL,
    name VARCHAR2 (200) NOT NULL,
    valid_id NUMBER (5, 0) NOT NULL,
    comments VARCHAR2 (200) NOT NULL,
    create_time DATE NOT NULL,
    create_by NUMBER NOT NULL,
    change_time DATE NOT NULL,
    change_by NUMBER NOT NULL,
    CONSTRAINT service_U_1 UNIQUE (name)
);
ALTER TABLE service ADD CONSTRAINT service_PK PRIMARY KEY (id);
DROP SEQUENCE service_seq;
CREATE SEQUENCE service_seq;
CREATE OR REPLACE TRIGGER service_s_t
before insert on service
for each row
begin
    select service_seq.nextval
    into :new.id
    from dual;
end;
/
--;
ALTER TABLE service ADD CONSTRAINT fk_service_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE service ADD CONSTRAINT fk_service_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);

--
-- sla
--
CREATE TABLE sla (
    id NUMBER NOT NULL,
    service_id NUMBER NOT NULL,
    name VARCHAR2 (200) NOT NULL,
    calendar_name VARCHAR2 (100),
    response_time NUMBER NOT NULL,
    max_time_to_repair NUMBER NOT NULL,
    min_time_between_incidents NUMBER NOT NULL,
    valid_id NUMBER (5, 0) NOT NULL,
    comments VARCHAR2 (200) NOT NULL,
    create_time DATE NOT NULL,
    create_by NUMBER NOT NULL,
    change_time DATE NOT NULL,
    change_by NUMBER NOT NULL
);
ALTER TABLE sla ADD CONSTRAINT sla_PK PRIMARY KEY (id);
DROP SEQUENCE sla_seq;
CREATE SEQUENCE sla_seq;
CREATE OR REPLACE TRIGGER sla_s_t
before insert on sla
for each row
begin
    select sla_seq.nextval
    into :new.id
    from dual;
end;
/
--;
ALTER TABLE sla ADD CONSTRAINT fk_sla_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE sla ADD CONSTRAINT fk_sla_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE sla ADD CONSTRAINT fk_sla_service_id_id FOREIGN KEY (service_id) REFERENCES service(id);
