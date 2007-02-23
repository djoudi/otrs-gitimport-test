-- --
-- Update an existing OTRS database from 2.1 to 2.2
-- Copyright (C) 2001-2006 OTRS GmbH, http://otrs.org/
-- --
-- $Id: DBUpdate-to-2.2.mysql.sql,v 1.4 2007-02-23 11:36:57 mh Exp $
-- --
--
-- usage: cat DBUpdate-to-2.2.mysql.sql | mysql -f -u root otrs
--
-- --

--
-- ticket
--
ALTER TABLE ticket ADD freetime3 DATETIME;
ALTER TABLE ticket ADD freetime4 DATETIME;
ALTER TABLE ticket ADD freetime5 DATETIME;
ALTER TABLE ticket ADD freetime6 DATETIME;

--
-- ticket_priority
--
ALTER TABLE ticket_priority ADD valid_id SMALLINT NOT NULL;
UPDATE ticket_priority SET valid_id = 1;

--
-- service
--
CREATE TABLE service (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR (200) NOT NULL,
    valid_id SMALLINT NOT NULL,
    comments VARCHAR (200) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id),
    UNIQUE (name)
);
ALTER TABLE service ADD FOREIGN KEY (create_by) REFERENCES `system_user(id)`;
ALTER TABLE service ADD FOREIGN KEY (change_by) REFERENCES `system_user(id)`;

--
-- sla
--
CREATE TABLE sla (
    id INTEGER NOT NULL AUTO_INCREMENT,
    service_id INTEGER NOT NULL,
    name VARCHAR (200) NOT NULL,
    calendar_name VARCHAR (100),
    response_time INTEGER NOT NULL,
    max_time_to_repair INTEGER NOT NULL,
    min_time_between_incidents INTEGER NOT NULL,
    valid_id SMALLINT NOT NULL,
    comments VARCHAR (200) NOT NULL,
    create_time DATETIME NOT NULL,
    create_by INTEGER NOT NULL,
    change_time DATETIME NOT NULL,
    change_by INTEGER NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE sla ADD FOREIGN KEY (create_by) REFERENCES `system_user(id)`;
ALTER TABLE sla ADD FOREIGN KEY (change_by) REFERENCES `system_user(id)`;
ALTER TABLE sla ADD FOREIGN KEY (service_id) REFERENCES `service(id)`;
