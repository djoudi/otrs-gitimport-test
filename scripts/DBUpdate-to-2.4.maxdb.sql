// ----------------------------------------------------------
//  driver: maxdb, generated: 2009-03-17 09:45:44
// ----------------------------------------------------------
// ----------------------------------------------------------
//  alter table postmaster_filter
// ----------------------------------------------------------
ALTER TABLE postmaster_filter ADD f_stop SMALLINT
//
// ----------------------------------------------------------
//  alter table article
// ----------------------------------------------------------
ALTER TABLE article ADD a_in_reply_to VARCHAR (3800)
//
// ----------------------------------------------------------
//  alter table article
// ----------------------------------------------------------
ALTER TABLE article ADD a_references VARCHAR (3800)
//
// ----------------------------------------------------------
//  create table service_preferences
// ----------------------------------------------------------
CREATE TABLE service_preferences
(
    service_id INTEGER NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (250)
)
//
CREATE INDEX service_preferences_8 ON service_preferences (service_id)
//
// ----------------------------------------------------------
//  create table sla_preferences
// ----------------------------------------------------------
CREATE TABLE sla_preferences
(
    sla_id INTEGER NOT NULL,
    preferences_key VARCHAR (150) NOT NULL,
    preferences_value VARCHAR (250)
)
//
CREATE INDEX sla_preferences_sla_17 ON sla_preferences (sla_id)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD phone VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD fax VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD mobile VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD street VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD zip VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD city VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table customer_user
// ----------------------------------------------------------
ALTER TABLE customer_user ADD country VARCHAR (150)
//
// ----------------------------------------------------------
//  alter table salutation
// ----------------------------------------------------------
ALTER TABLE salutation ADD content_type VARCHAR (250)
//
// ----------------------------------------------------------
//  alter table signature
// ----------------------------------------------------------
ALTER TABLE signature ADD content_type VARCHAR (250)
//
// ----------------------------------------------------------
//  alter table standard_response
// ----------------------------------------------------------
ALTER TABLE standard_response ADD content_type VARCHAR (250)
//
// ----------------------------------------------------------
//  alter table auto_response
// ----------------------------------------------------------
ALTER TABLE auto_response ADD content_type VARCHAR (250)
//
// ----------------------------------------------------------
//  alter table notifications
// ----------------------------------------------------------
ALTER TABLE notifications ADD content_type VARCHAR (250)
//
ALTER TABLE service_preferences ADD FOREIGN KEY (service_id) REFERENCES service(id)
//
ALTER TABLE sla_preferences ADD FOREIGN KEY (sla_id) REFERENCES sla(id)
//
