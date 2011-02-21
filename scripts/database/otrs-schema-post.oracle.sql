-- ----------------------------------------------------------
--  driver: oracle, generated: 2011-02-21 14:09:50
-- ----------------------------------------------------------
SET DEFINE OFF;
ALTER TABLE valid ADD CONSTRAINT FK_valid_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE valid ADD CONSTRAINT FK_valid_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE users ADD CONSTRAINT FK_users_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE users ADD CONSTRAINT FK_users_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE users ADD CONSTRAINT FK_users_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE user_preferences ADD CONSTRAINT FK_user_preferences_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE groups ADD CONSTRAINT FK_groups_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE groups ADD CONSTRAINT FK_groups_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE groups ADD CONSTRAINT FK_groups_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE group_user ADD CONSTRAINT FK_group_user_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE group_user ADD CONSTRAINT FK_group_user_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE group_user ADD CONSTRAINT FK_group_user_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE group_user ADD CONSTRAINT FK_group_user_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE group_role ADD CONSTRAINT FK_group_role_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE group_role ADD CONSTRAINT FK_group_role_role_id_id FOREIGN KEY (role_id) REFERENCES roles (id);
ALTER TABLE group_role ADD CONSTRAINT FK_group_role_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE group_role ADD CONSTRAINT FK_group_role_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_groupbb FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_creat36 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_chang97 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE roles ADD CONSTRAINT FK_roles_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE roles ADD CONSTRAINT FK_roles_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE roles ADD CONSTRAINT FK_roles_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE role_user ADD CONSTRAINT FK_role_user_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE role_user ADD CONSTRAINT FK_role_user_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE role_user ADD CONSTRAINT FK_role_user_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE personal_queues ADD CONSTRAINT FK_personal_queues_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE personal_queues ADD CONSTRAINT FK_personal_queues_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE salutation ADD CONSTRAINT FK_salutation_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE salutation ADD CONSTRAINT FK_salutation_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE salutation ADD CONSTRAINT FK_salutation_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE signature ADD CONSTRAINT FK_signature_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE signature ADD CONSTRAINT FK_signature_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE signature ADD CONSTRAINT FK_signature_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE system_address ADD CONSTRAINT FK_system_address_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE system_address ADD CONSTRAINT FK_system_address_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE system_address ADD CONSTRAINT FK_system_address_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_createef FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_change63 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_valid_95 FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_follow_up_id_id FOREIGN KEY (follow_up_id) REFERENCES follow_up_possible (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_salutation_id_id FOREIGN KEY (salutation_id) REFERENCES salutation (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_signature_id_id FOREIGN KEY (signature_id) REFERENCES signature (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_system_address_id_id FOREIGN KEY (system_address_id) REFERENCES system_address (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_preferences ADD CONSTRAINT FK_queue_preferences_queue_id9 FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_priority ADD CONSTRAINT FK_ticket_priority_create_by76 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_priority ADD CONSTRAINT FK_ticket_priority_change_byd8 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_create_bf4 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_change_b80 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_valid_id79 FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_state_type (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_state_type ADD CONSTRAINT FK_ticket_state_type_create_e7 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_state_type ADD CONSTRAINT FK_ticket_state_type_change_d7 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_service_id_id FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_sla_id_id FOREIGN KEY (sla_id) REFERENCES sla (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_lock_id_id FOREIGN KEY (ticket_lock_id) REFERENCES ticket_lock_type (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_priority_id88 FOREIGN KEY (ticket_priority_id) REFERENCES ticket_priority (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_state_id_id FOREIGN KEY (ticket_state_id) REFERENCES ticket_state (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_type (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_responsible_user_id1 FOREIGN KEY (responsible_user_id) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_article_id34 FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_history_ty4d FOREIGN KEY (history_type_id) REFERENCES ticket_history_type (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_priority_i53 FOREIGN KEY (priority_id) REFERENCES ticket_priority (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_state_id_id FOREIGN KEY (state_id) REFERENCES ticket_state (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_type (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_owner_id_id FOREIGN KEY (owner_id) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_creat45 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_chang7e FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_valid11 FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_lock_index ADD CONSTRAINT FK_ticket_lock_index_ticket_81 FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_creat12 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_changb0 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_validbd FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_flag ADD CONSTRAINT FK_article_flag_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_flag ADD CONSTRAINT FK_article_flag_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_article_sender_ty29 FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type (id);
ALTER TABLE article ADD CONSTRAINT FK_article_article_type_id_id FOREIGN KEY (article_type_id) REFERENCES article_type (id);
ALTER TABLE article ADD CONSTRAINT FK_article_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article ADD CONSTRAINT FK_article_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_article_se5d FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_article_tydd FOREIGN KEY (article_type_id) REFERENCES article_type (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_articlcc FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_create4a FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_change59 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_article_i95 FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_ticket_id91 FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_create_bybb FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_change_byff FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_create_21 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_change_a1 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_valid_ife FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_q4c FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_s29 FOREIGN KEY (standard_response_id) REFERENCES standard_response (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_c10 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_c38 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_creat32 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_changb4 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_valid6c FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachm3d FOREIGN KEY (standard_attachment_id) REFERENCES standard_attachment (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachmb9 FOREIGN KEY (standard_response_id) REFERENCES standard_response (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachme5 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachmfb FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_create90 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_change40 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_valid_75 FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_type_id_id FOREIGN KEY (type_id) REFERENCES auto_response_type (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_system_addrde FOREIGN KEY (system_address_id) REFERENCES system_address (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_auto_c8 FOREIGN KEY (auto_response_id) REFERENCES auto_response (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_queue4f FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_creat36 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_chang71 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE service ADD CONSTRAINT FK_service_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE service ADD CONSTRAINT FK_service_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE service_preferences ADD CONSTRAINT FK_service_preferences_servi62 FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE service_customer_user ADD CONSTRAINT FK_service_customer_user_ser07 FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE service_customer_user ADD CONSTRAINT FK_service_customer_user_cred0 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE sla ADD CONSTRAINT FK_sla_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE sla ADD CONSTRAINT FK_sla_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE sla_preferences ADD CONSTRAINT FK_sla_preferences_sla_id_id FOREIGN KEY (sla_id) REFERENCES sla (id);
ALTER TABLE service_sla ADD CONSTRAINT FK_service_sla_service_id_id FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE service_sla ADD CONSTRAINT FK_service_sla_sla_id_id FOREIGN KEY (sla_id) REFERENCES sla (id);
ALTER TABLE customer_user ADD CONSTRAINT FK_customer_user_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE customer_user ADD CONSTRAINT FK_customer_user_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE customer_user ADD CONSTRAINT FK_customer_user_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE mail_account ADD CONSTRAINT FK_mail_account_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE mail_account ADD CONSTRAINT FK_mail_account_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE mail_account ADD CONSTRAINT FK_mail_account_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE notifications ADD CONSTRAINT FK_notifications_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE notifications ADD CONSTRAINT FK_notifications_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_create23 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_changefb FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_valid_51 FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE notification_event_item ADD CONSTRAINT FK_notification_event_item_nf6 FOREIGN KEY (notification_id) REFERENCES notification_event (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_source_obje16 FOREIGN KEY (source_object_id) REFERENCES link_object (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_target_obje18 FOREIGN KEY (target_object_id) REFERENCES link_object (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_state_id_id FOREIGN KEY (state_id) REFERENCES link_state (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_type_id_id FOREIGN KEY (type_id) REFERENCES link_type (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE virtual_fs_preferences ADD CONSTRAINT FK_virtual_fs_preferences_vib1 FOREIGN KEY (virtual_fs_id) REFERENCES virtual_fs (id);
ALTER TABLE package_repository ADD CONSTRAINT FK_package_repository_createa6 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE package_repository ADD CONSTRAINT FK_package_repository_changea2 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_crea72 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_chan93 FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_valife FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_hist66 FOREIGN KEY (config_id) REFERENCES gi_webservice_config (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_hist54 FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_histeb FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_debugger_entry ADD CONSTRAINT FK_gi_debugger_entry_webserv66 FOREIGN KEY (webservice_id) REFERENCES gi_webservice_config (id);
ALTER TABLE gi_debugger_entry_content ADD CONSTRAINT FK_gi_debugger_entry_content3b FOREIGN KEY (gi_debugger_entry_id) REFERENCES gi_debugger_entry (id);
