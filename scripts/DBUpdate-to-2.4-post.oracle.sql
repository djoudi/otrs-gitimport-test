-- ----------------------------------------------------------
--  driver: oracle, generated: 2009-05-15 11:45:50
-- ----------------------------------------------------------
SET DEFINE OFF;
-- ----------------------------------------------------------
--  alter table queue
-- ----------------------------------------------------------
ALTER TABLE queue DROP COLUMN move_notify;
-- ----------------------------------------------------------
--  alter table queue
-- ----------------------------------------------------------
ALTER TABLE queue DROP COLUMN state_notify;
-- ----------------------------------------------------------
--  alter table queue
-- ----------------------------------------------------------
ALTER TABLE queue DROP COLUMN lock_notify;
-- ----------------------------------------------------------
--  alter table queue
-- ----------------------------------------------------------
ALTER TABLE queue DROP COLUMN owner_notify;
SET DEFINE OFF;
