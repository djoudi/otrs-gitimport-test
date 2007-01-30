-- ----------------------------------------------------------
--  database: oracle, generated: Tue Jan 30 11:38:39 2007
-- ----------------------------------------------------------
ALTER TABLE valid ADD CONSTRAINT fk_valid_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE valid ADD CONSTRAINT fk_valid_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_priority ADD CONSTRAINT fk_ticket_priority_create_by13 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_priority ADD CONSTRAINT fk_ticket_priority_change_by89 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT fk_ticket_lock_type_create_b63 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT fk_ticket_lock_type_change_b18 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT fk_ticket_lock_type_valid_id57 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE system_user ADD CONSTRAINT fk_system_user_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE system_user ADD CONSTRAINT fk_system_user_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE system_user ADD CONSTRAINT fk_system_user_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE user_preferences ADD CONSTRAINT fk_user_preferences_user_id_id FOREIGN KEY (user_id) REFERENCES system_user(id);
ALTER TABLE groups ADD CONSTRAINT fk_groups_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE groups ADD CONSTRAINT fk_groups_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE groups ADD CONSTRAINT fk_groups_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE group_user ADD CONSTRAINT fk_group_user_group_id_id FOREIGN KEY (group_id) REFERENCES groups(id);
ALTER TABLE group_user ADD CONSTRAINT fk_group_user_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE group_user ADD CONSTRAINT fk_group_user_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE group_user ADD CONSTRAINT fk_group_user_user_id_id FOREIGN KEY (user_id) REFERENCES system_user(id);
ALTER TABLE group_role ADD CONSTRAINT fk_group_role_role_id_id FOREIGN KEY (role_id) REFERENCES roles(id);
ALTER TABLE group_role ADD CONSTRAINT fk_group_role_group_id_id FOREIGN KEY (group_id) REFERENCES groups(id);
ALTER TABLE group_role ADD CONSTRAINT fk_group_role_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE group_role ADD CONSTRAINT fk_group_role_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE group_customer_user ADD CONSTRAINT fk_group_customer_user_group63 FOREIGN KEY (group_id) REFERENCES groups(id);
ALTER TABLE group_customer_user ADD CONSTRAINT fk_group_customer_user_creat41 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE group_customer_user ADD CONSTRAINT fk_group_customer_user_chang28 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE roles ADD CONSTRAINT fk_roles_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE roles ADD CONSTRAINT fk_roles_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE roles ADD CONSTRAINT fk_roles_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE role_user ADD CONSTRAINT fk_role_user_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE role_user ADD CONSTRAINT fk_role_user_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE role_user ADD CONSTRAINT fk_role_user_user_id_id FOREIGN KEY (user_id) REFERENCES system_user(id);
ALTER TABLE personal_queues ADD CONSTRAINT fk_personal_queues_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue(id);
ALTER TABLE personal_queues ADD CONSTRAINT fk_personal_queues_user_id_id FOREIGN KEY (user_id) REFERENCES system_user(id);
ALTER TABLE theme ADD CONSTRAINT fk_theme_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE theme ADD CONSTRAINT fk_theme_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE theme ADD CONSTRAINT fk_theme_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE ticket_state ADD CONSTRAINT fk_ticket_state_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_state_type(id);
ALTER TABLE ticket_state ADD CONSTRAINT fk_ticket_state_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_state ADD CONSTRAINT fk_ticket_state_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_state ADD CONSTRAINT fk_ticket_state_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE ticket_state_type ADD CONSTRAINT fk_ticket_state_type_create_51 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_state_type ADD CONSTRAINT fk_ticket_state_type_change_75 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE salutation ADD CONSTRAINT fk_salutation_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE salutation ADD CONSTRAINT fk_salutation_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE salutation ADD CONSTRAINT fk_salutation_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE signature ADD CONSTRAINT fk_signature_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE signature ADD CONSTRAINT fk_signature_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE signature ADD CONSTRAINT fk_signature_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE system_address ADD CONSTRAINT fk_system_address_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE system_address ADD CONSTRAINT fk_system_address_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE system_address ADD CONSTRAINT fk_system_address_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE follow_up_possible ADD CONSTRAINT fk_follow_up_possible_create76 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE follow_up_possible ADD CONSTRAINT fk_follow_up_possible_change76 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE follow_up_possible ADD CONSTRAINT fk_follow_up_possible_valid_73 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_salutation_id_id FOREIGN KEY (salutation_id) REFERENCES salutation(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_signature_id_id FOREIGN KEY (signature_id) REFERENCES signature(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_group_id_id FOREIGN KEY (group_id) REFERENCES groups(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_follow_up_id_id FOREIGN KEY (follow_up_id) REFERENCES follow_up_possible(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_system_address_id_id FOREIGN KEY (system_address_id) REFERENCES system_address(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE queue ADD CONSTRAINT fk_queue_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_ticket_lock_id_id FOREIGN KEY (ticket_lock_id) REFERENCES ticket_lock_type(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_ticket_state_id_id FOREIGN KEY (ticket_state_id) REFERENCES ticket_state(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_ticket_priority_id62 FOREIGN KEY (ticket_priority_id) REFERENCES ticket_priority(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_user_id_id FOREIGN KEY (user_id) REFERENCES system_user(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_responsible_user_i77 FOREIGN KEY (responsible_user_id) REFERENCES system_user(id);
ALTER TABLE ticket ADD CONSTRAINT fk_ticket_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_priority_i25 FOREIGN KEY (priority_id) REFERENCES ticket_priority(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_owner_id_id FOREIGN KEY (owner_id) REFERENCES system_user(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_state_id_id FOREIGN KEY (state_id) REFERENCES ticket_state(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_history_ty71 FOREIGN KEY (history_type_id) REFERENCES ticket_history_type(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_article_id98 FOREIGN KEY (article_id) REFERENCES article(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue(id);
ALTER TABLE ticket_history ADD CONSTRAINT fk_ticket_history_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket(id);
ALTER TABLE ticket_history_type ADD CONSTRAINT fk_ticket_history_type_creat22 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE ticket_history_type ADD CONSTRAINT fk_ticket_history_type_chang28 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE ticket_history_type ADD CONSTRAINT fk_ticket_history_type_valid69 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE article_type ADD CONSTRAINT fk_article_type_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article_type ADD CONSTRAINT fk_article_type_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE article_type ADD CONSTRAINT fk_article_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE article_sender_type ADD CONSTRAINT fk_article_sender_type_creat29 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article_sender_type ADD CONSTRAINT fk_article_sender_type_chang34 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE article_sender_type ADD CONSTRAINT fk_article_sender_type_valid77 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE article_flag ADD CONSTRAINT fk_article_flag_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article ADD CONSTRAINT fk_article_article_sender_ty2 FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type(id);
ALTER TABLE article ADD CONSTRAINT fk_article_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article ADD CONSTRAINT fk_article_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE article ADD CONSTRAINT fk_article_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE article ADD CONSTRAINT fk_article_article_type_id_id FOREIGN KEY (article_type_id) REFERENCES article_type(id);
ALTER TABLE article ADD CONSTRAINT fk_article_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket(id);
ALTER TABLE article_plain ADD CONSTRAINT fk_article_plain_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article_plain ADD CONSTRAINT fk_article_plain_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE article_plain ADD CONSTRAINT fk_article_plain_article_id_id FOREIGN KEY (article_id) REFERENCES article(id);
ALTER TABLE article_attachment ADD CONSTRAINT fk_article_attachment_create33 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE article_attachment ADD CONSTRAINT fk_article_attachment_change23 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE article_attachment ADD CONSTRAINT fk_article_attachment_articl51 FOREIGN KEY (article_id) REFERENCES article(id);
ALTER TABLE standard_response ADD CONSTRAINT fk_standard_response_create_57 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE standard_response ADD CONSTRAINT fk_standard_response_change_91 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE standard_response ADD CONSTRAINT fk_standard_response_valid_i1 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE queue_standard_response ADD CONSTRAINT fk_queue_standard_response_c18 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE queue_standard_response ADD CONSTRAINT fk_queue_standard_response_c58 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE queue_standard_response ADD CONSTRAINT fk_queue_standard_response_s67 FOREIGN KEY (standard_response_id) REFERENCES standard_response(id);
ALTER TABLE queue_standard_response ADD CONSTRAINT fk_queue_standard_response_q74 FOREIGN KEY (queue_id) REFERENCES queue(id);
ALTER TABLE standard_attachment ADD CONSTRAINT fk_standard_attachment_creat47 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE standard_attachment ADD CONSTRAINT fk_standard_attachment_chang30 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE standard_attachment ADD CONSTRAINT fk_standard_attachment_valid28 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT fk_standard_response_attachm11 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT fk_standard_response_attachm46 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT fk_standard_response_attachm43 FOREIGN KEY (standard_response_id) REFERENCES standard_response(id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT fk_standard_response_attachm61 FOREIGN KEY (standard_attachment_id) REFERENCES standard_attachment(id);
ALTER TABLE auto_response_type ADD CONSTRAINT fk_auto_response_type_create98 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE auto_response_type ADD CONSTRAINT fk_auto_response_type_change94 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE auto_response_type ADD CONSTRAINT fk_auto_response_type_valid_80 FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE auto_response ADD CONSTRAINT fk_auto_response_type_id_id FOREIGN KEY (type_id) REFERENCES auto_response_type(id);
ALTER TABLE auto_response ADD CONSTRAINT fk_auto_response_system_addr22 FOREIGN KEY (system_address_id) REFERENCES system_address(id);
ALTER TABLE auto_response ADD CONSTRAINT fk_auto_response_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE auto_response ADD CONSTRAINT fk_auto_response_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE auto_response ADD CONSTRAINT fk_auto_response_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE queue_auto_response ADD CONSTRAINT fk_queue_auto_response_auto_84 FOREIGN KEY (auto_response_id) REFERENCES auto_response(id);
ALTER TABLE queue_auto_response ADD CONSTRAINT fk_queue_auto_response_creat83 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE queue_auto_response ADD CONSTRAINT fk_queue_auto_response_chang50 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE queue_auto_response ADD CONSTRAINT fk_queue_auto_response_queue96 FOREIGN KEY (queue_id) REFERENCES queue(id);
ALTER TABLE time_accounting ADD CONSTRAINT fk_time_accounting_create_by41 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE time_accounting ADD CONSTRAINT fk_time_accounting_change_by98 FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE time_accounting ADD CONSTRAINT fk_time_accounting_article_i47 FOREIGN KEY (article_id) REFERENCES article(id);
ALTER TABLE time_accounting ADD CONSTRAINT fk_time_accounting_ticket_id57 FOREIGN KEY (ticket_id) REFERENCES ticket(id);
ALTER TABLE customer_user ADD CONSTRAINT fk_customer_user_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE customer_user ADD CONSTRAINT fk_customer_user_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE customer_user ADD CONSTRAINT fk_customer_user_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE pop3_account ADD CONSTRAINT fk_pop3_account_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE pop3_account ADD CONSTRAINT fk_pop3_account_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE pop3_account ADD CONSTRAINT fk_pop3_account_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid(id);
ALTER TABLE notifications ADD CONSTRAINT fk_notifications_create_by_id FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE notifications ADD CONSTRAINT fk_notifications_change_by_id FOREIGN KEY (change_by) REFERENCES system_user(id);
ALTER TABLE package_repository ADD CONSTRAINT fk_package_repository_create62 FOREIGN KEY (create_by) REFERENCES system_user(id);
ALTER TABLE package_repository ADD CONSTRAINT fk_package_repository_change73 FOREIGN KEY (change_by) REFERENCES system_user(id);
