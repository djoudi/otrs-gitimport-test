-- ----------------------------------------------------------
--  driver: mssql, generated: 2012-07-05 09:12:50
-- ----------------------------------------------------------
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
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE group_customer_user ADD CONSTRAINT FK_group_customer_user_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
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
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE follow_up_possible ADD CONSTRAINT FK_follow_up_possible_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_follow_up_id_id FOREIGN KEY (follow_up_id) REFERENCES follow_up_possible (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_salutation_id_id FOREIGN KEY (salutation_id) REFERENCES salutation (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_signature_id_id FOREIGN KEY (signature_id) REFERENCES signature (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_system_address_id_id FOREIGN KEY (system_address_id) REFERENCES system_address (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE queue ADD CONSTRAINT FK_queue_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_preferences ADD CONSTRAINT FK_queue_preferences_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_priority ADD CONSTRAINT FK_ticket_priority_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_priority ADD CONSTRAINT FK_ticket_priority_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_type ADD CONSTRAINT FK_ticket_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_lock_type ADD CONSTRAINT FK_ticket_lock_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_state_type (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_state ADD CONSTRAINT FK_ticket_state_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_state_type ADD CONSTRAINT FK_ticket_state_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_state_type ADD CONSTRAINT FK_ticket_state_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_service_id_id FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_sla_id_id FOREIGN KEY (sla_id) REFERENCES sla (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_lock_id_id FOREIGN KEY (ticket_lock_id) REFERENCES ticket_lock_type (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_priority_id_id FOREIGN KEY (ticket_priority_id) REFERENCES ticket_priority (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_ticket_state_id_id FOREIGN KEY (ticket_state_id) REFERENCES ticket_state (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_type (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_responsible_user_id_id FOREIGN KEY (responsible_user_id) REFERENCES users (id);
ALTER TABLE ticket ADD CONSTRAINT FK_ticket_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_flag ADD CONSTRAINT FK_ticket_flag_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_history_type_id_id FOREIGN KEY (history_type_id) REFERENCES ticket_history_type (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_priority_id_id FOREIGN KEY (priority_id) REFERENCES ticket_priority (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_state_id_id FOREIGN KEY (state_id) REFERENCES ticket_state (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_type_id_id FOREIGN KEY (type_id) REFERENCES ticket_type (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_owner_id_id FOREIGN KEY (owner_id) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_history ADD CONSTRAINT FK_ticket_history_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_history_type ADD CONSTRAINT FK_ticket_history_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_user_id_id FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE ticket_watcher ADD CONSTRAINT FK_ticket_watcher_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_group_id_id FOREIGN KEY (group_id) REFERENCES groups (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE ticket_index ADD CONSTRAINT FK_ticket_index_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE ticket_lock_index ADD CONSTRAINT FK_ticket_lock_index_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_type ADD CONSTRAINT FK_article_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_sender_type ADD CONSTRAINT FK_article_sender_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_flag ADD CONSTRAINT FK_article_flag_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_flag ADD CONSTRAINT FK_article_flag_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_article_sender_type_id_id FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type (id);
ALTER TABLE article ADD CONSTRAINT FK_article_article_type_id_id FOREIGN KEY (article_type_id) REFERENCES article_type (id);
ALTER TABLE article ADD CONSTRAINT FK_article_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article ADD CONSTRAINT FK_article_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article ADD CONSTRAINT FK_article_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_article_sender_type_id_id FOREIGN KEY (article_sender_type_id) REFERENCES article_sender_type (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_article_type_id_id FOREIGN KEY (article_type_id) REFERENCES article_type (id);
ALTER TABLE article_search ADD CONSTRAINT FK_article_search_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_plain ADD CONSTRAINT FK_article_plain_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE article_attachment ADD CONSTRAINT FK_article_attachment_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_article_id_id FOREIGN KEY (article_id) REFERENCES article (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_ticket_id_id FOREIGN KEY (ticket_id) REFERENCES ticket (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE time_accounting ADD CONSTRAINT FK_time_accounting_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_response ADD CONSTRAINT FK_standard_response_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_standard_response_id_id FOREIGN KEY (standard_response_id) REFERENCES standard_response (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue_standard_response ADD CONSTRAINT FK_queue_standard_response_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE standard_attachment ADD CONSTRAINT FK_standard_attachment_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachment_standard_attachment_id_id FOREIGN KEY (standard_attachment_id) REFERENCES standard_attachment (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachment_standard_response_id_id FOREIGN KEY (standard_response_id) REFERENCES standard_response (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachment_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE standard_response_attachment ADD CONSTRAINT FK_standard_response_attachment_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response_type ADD CONSTRAINT FK_auto_response_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_type_id_id FOREIGN KEY (type_id) REFERENCES auto_response_type (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_system_address_id_id FOREIGN KEY (system_address_id) REFERENCES system_address (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE auto_response ADD CONSTRAINT FK_auto_response_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_auto_response_id_id FOREIGN KEY (auto_response_id) REFERENCES auto_response (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_queue_id_id FOREIGN KEY (queue_id) REFERENCES queue (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE queue_auto_response ADD CONSTRAINT FK_queue_auto_response_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE service ADD CONSTRAINT FK_service_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE service ADD CONSTRAINT FK_service_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE service_preferences ADD CONSTRAINT FK_service_preferences_service_id_id FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE service_customer_user ADD CONSTRAINT FK_service_customer_user_service_id_id FOREIGN KEY (service_id) REFERENCES service (id);
ALTER TABLE service_customer_user ADD CONSTRAINT FK_service_customer_user_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
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
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE notification_event ADD CONSTRAINT FK_notification_event_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE notification_event_item ADD CONSTRAINT FK_notification_event_item_notification_id_id FOREIGN KEY (notification_id) REFERENCES notification_event (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE link_type ADD CONSTRAINT FK_link_type_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE link_state ADD CONSTRAINT FK_link_state_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_source_object_id_id FOREIGN KEY (source_object_id) REFERENCES link_object (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_target_object_id_id FOREIGN KEY (target_object_id) REFERENCES link_object (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_state_id_id FOREIGN KEY (state_id) REFERENCES link_state (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_type_id_id FOREIGN KEY (type_id) REFERENCES link_type (id);
ALTER TABLE link_relation ADD CONSTRAINT FK_link_relation_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE virtual_fs_preferences ADD CONSTRAINT FK_virtual_fs_preferences_virtual_fs_id_id FOREIGN KEY (virtual_fs_id) REFERENCES virtual_fs (id);
ALTER TABLE package_repository ADD CONSTRAINT FK_package_repository_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE package_repository ADD CONSTRAINT FK_package_repository_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config ADD CONSTRAINT FK_gi_webservice_config_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_history_config_id_id FOREIGN KEY (config_id) REFERENCES gi_webservice_config (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_history_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE gi_webservice_config_history ADD CONSTRAINT FK_gi_webservice_config_history_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE gi_debugger_entry ADD CONSTRAINT FK_gi_debugger_entry_webservice_id_id FOREIGN KEY (webservice_id) REFERENCES gi_webservice_config (id);
ALTER TABLE gi_debugger_entry_content ADD CONSTRAINT FK_gi_debugger_entry_content_gi_debugger_entry_id_id FOREIGN KEY (gi_debugger_entry_id) REFERENCES gi_debugger_entry (id);
ALTER TABLE gi_object_lock_state ADD CONSTRAINT FK_gi_object_lock_state_webservice_id_id FOREIGN KEY (webservice_id) REFERENCES gi_webservice_config (id);
ALTER TABLE smime_signer_cert_relations ADD CONSTRAINT FK_smime_signer_cert_relations_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE smime_signer_cert_relations ADD CONSTRAINT FK_smime_signer_cert_relations_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE dynamic_field_value ADD CONSTRAINT FK_dynamic_field_value_field_id_id FOREIGN KEY (field_id) REFERENCES dynamic_field (id);
ALTER TABLE dynamic_field ADD CONSTRAINT FK_dynamic_field_create_by_id FOREIGN KEY (create_by) REFERENCES users (id);
ALTER TABLE dynamic_field ADD CONSTRAINT FK_dynamic_field_change_by_id FOREIGN KEY (change_by) REFERENCES users (id);
ALTER TABLE dynamic_field ADD CONSTRAINT FK_dynamic_field_valid_id_id FOREIGN KEY (valid_id) REFERENCES valid (id);
