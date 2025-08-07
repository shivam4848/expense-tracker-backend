CREATE UNIQUE INDEX mon_alert_actions_pkey ON public.mon_alert_actions USING btree (action_id);

CREATE UNIQUE INDEX mon_app_insight_master_pkey ON public.mon_app_insight_master USING btree (app_id);

CREATE UNIQUE INDEX obs_api_status_master_pkey ON public.obs_api_status_master USING btree (api_id);

CREATE UNIQUE INDEX shedlock_pkey ON public.shedlock USING btree (name);

CREATE UNIQUE INDEX siem_aler_api_status_master_pkey ON public.siem_aler_api_status_master USING btree (api_id);

CREATE UNIQUE INDEX "MON_ALERT_ACTIONS_pkey" ON public.siem_alert_actions USING btree (action_id);

CREATE INDEX idx_alert_actions_alert_id ON public.siem_alert_actions USING btree (alert_id);

CREATE INDEX customer_project_id ON public.siem_alert_auto_closure_config USING btree (customer_id, project_id);

CREATE UNIQUE INDEX siem_alert_auto_closure_config_pkey ON public.siem_alert_auto_closure_config USING btree (customer_id, project_id);

CREATE UNIQUE INDEX siem_alert_closure_config_pkey ON public.siem_alert_closure_config USING btree (customer_id);

CREATE INDEX customer_id_idx ON public.siem_alert_details USING btree (customer_id) WITH (deduplicate_items='true');

CREATE INDEX insert_on_idx ON public.siem_alert_details USING btree (insert_on) WITH (deduplicate_items='true');

CREATE UNIQUE INDEX mon_alert_details_pkey ON public.siem_alert_details USING btree (alert_id);

CREATE INDEX siem_alert_details_proj_index ON public.siem_alert_details USING btree (project_id);

CREATE INDEX siem_alert_details_severity_index ON public.siem_alert_details USING btree (severity);

CREATE INDEX siem_alert_details_source_index ON public.siem_alert_details USING btree (source);

CREATE INDEX siem_alert_details_status_index ON public.siem_alert_details USING btree (status);

CREATE INDEX siem_alert_details_sub_index ON public.siem_alert_details USING btree (subscription_id);

CREATE INDEX sync_customer_id_idx ON public.siem_alert_details USING btree (customer_id) WITH (deduplicate_items='true');

CREATE INDEX sync_insert_on_idx ON public.siem_alert_details USING btree (insert_on) WITH (deduplicate_items='true');

CREATE INDEX idx_safd_alert_id ON public.siem_alert_finding_details USING btree (alert_id);

CREATE INDEX idx_safd_document_id ON public.siem_alert_finding_details USING btree (document_id);

CREATE INDEX idx_safd_finding_id ON public.siem_alert_finding_details USING btree (finding_id);

CREATE UNIQUE INDEX siem_alert_finding_details_pkey ON public.siem_alert_finding_details USING btree (id);

CREATE UNIQUE INDEX siem_alert_parent_count_details_pkey ON public.siem_alert_parent_count_details USING btree (parent_alert);

CREATE INDEX idx_alert_sample_documents_alert_id ON public.siem_alert_sample_documents USING btree (alert_id);

CREATE UNIQUE INDEX siem_alert_sample_documents_pkey ON public.siem_alert_sample_documents USING btree (id);

CREATE INDEX idx_alert_uuid_parent_alert_id_alert_type ON public.siem_alerts_summary USING btree (alert_uuid, parent_alert_id, alert_type);

CREATE INDEX idx_alerts_summary_parent_alert_id_alert_type ON public.siem_alerts_summary USING btree (parent_alert_id, alert_type);

CREATE INDEX idx_siem_alerts_summary_alert_type_status ON public.siem_alerts_summary USING btree (alert_type, status);

CREATE INDEX idx_siem_alerts_summary_customer_project ON public.siem_alerts_summary USING btree (customer_id, project_id);

CREATE INDEX idx_siem_alerts_summary_insert_on ON public.siem_alerts_summary USING btree (insert_on);

CREATE INDEX idx_siem_alerts_summary_parent_alert_id ON public.siem_alerts_summary USING btree (parent_alert_id);

CREATE INDEX siem_alerts_summary_parent_alert_id_alert_type_idx ON public.siem_alerts_summary USING btree (parent_alert_id, alert_type);

CREATE UNIQUE INDEX siem_alerts_summary_pkey ON public.siem_alerts_summary USING btree (alert_id);

CREATE UNIQUE INDEX siem_alerts_testing_pkey ON public.siem_alerts_testing USING btree (alert_id);

CREATE UNIQUE INDEX siem_async_actions_pkey ON public.siem_async_actions USING btree (action_id);

CREATE INDEX siem_audit_trail_user_objectid ON public.siem_audit_trail_user USING btree (object_id);

CREATE INDEX siem_audit_trail_user_objecttype ON public.siem_audit_trail_user USING btree (object_type);

CREATE UNIQUE INDEX siem_audit_trail_user_pkey ON public.siem_audit_trail_user USING btree (id);

CREATE UNIQUE INDEX siem_control_board_db_performance_details_pkey ON public.siem_control_board_db_performance_details USING btree (id);

CREATE UNIQUE INDEX siem_control_board_db_schema_size_pkey ON public.siem_control_board_db_schema_size USING btree (id);

CREATE UNIQUE INDEX siem_control_board_db_tables_size_pkey ON public.siem_control_board_db_tables_size USING btree (id);

CREATE UNIQUE INDEX siem_control_board_hcmp_index_pkey ON public.siem_control_board_hcmp_index USING btree (id);

CREATE UNIQUE INDEX siem_control_board_hcmp_shard_pkey ON public.siem_control_board_hcmp_shard USING btree (id);

CREATE UNIQUE INDEX siem_control_board_internal_index_pkey ON public.siem_control_board_internal_index USING btree (id);

CREATE UNIQUE INDEX siem_control_board_internal_shard_pkey ON public.siem_control_board_internal_shard USING btree (id);

CREATE UNIQUE INDEX siem_control_board_jobs_pkey ON public.siem_control_board_jobs USING btree (id);

CREATE UNIQUE INDEX siem_control_board_kubernetes_pkey ON public.siem_control_board_kubernetes USING btree (id);

CREATE UNIQUE INDEX siem_control_board_node_cluster_details_pkey ON public.siem_control_board_node_cluster_details USING btree (id);

CREATE UNIQUE INDEX siem_control_board_node_eps_details_pkey ON public.siem_control_board_node_eps_details USING btree (id);

CREATE INDEX idx_scam_distinct_optimization ON public.siem_cust_asset_master USING btree (asset_id, is_monitored, is_deleted, subscription_id);

CREATE INDEX idx_scam_subscription_monitored_deleted ON public.siem_cust_asset_master USING btree (subscription_id, is_monitored, is_deleted);

CREATE UNIQUE INDEX sec_cust_asset_master_pkey ON public.siem_cust_asset_master USING btree (id);

CREATE INDEX idx_onboard_asset_tech_status ON public.siem_cust_asset_onboard_master USING btree (asset_id, technology_category_id, technology_id, status, updated_on DESC);

CREATE UNIQUE INDEX siem_cust_asset_onboard_master_pkey ON public.siem_cust_asset_onboard_master USING btree (id);

CREATE INDEX idx_atd_asset_tech ON public.siem_cust_asset_tech_details USING btree (asset_id, technology_category_id, technology_id);

CREATE UNIQUE INDEX siem_cust_asset_tech_details_pkey ON public.siem_cust_asset_tech_details USING btree (id);

CREATE UNIQUE INDEX siem_customer_asset_tech_instance_pkey ON public.siem_cust_asset_tech_instance USING btree (id);

CREATE INDEX siem_cust_correlation_datasources_correlation_rule_id_idx ON public.siem_cust_correlation_datasources USING btree (correlation_rule_id);

CREATE UNIQUE INDEX siem_cust_correlation_datasources_pkey ON public.siem_cust_correlation_datasources USING btree (id);

CREATE UNIQUE INDEX siem_cust_correlation_rules_pkey ON public.siem_cust_correlation_rules USING btree (id);

CREATE INDEX siem_cust_correlation_rules_project_id_idx ON public.siem_cust_correlation_rules USING btree (project_id);

CREATE UNIQUE INDEX siem_cust_detector_rules_pkey ON public.siem_cust_detector_rules USING btree (id);

CREATE INDEX idx_siem_cust_detectors_customer_project ON public.siem_cust_detectors USING btree (customer_id, project_id);

CREATE UNIQUE INDEX siem_cust_detectors_pkey ON public.siem_cust_detectors USING btree (id);

CREATE UNIQUE INDEX siem_cust_ext_app_configs_pkey ON public.siem_cust_ext_app_configs USING btree (id);

CREATE UNIQUE INDEX siem_cust_ext_app_proj_sub_mapping_pkey ON public.siem_cust_ext_app_proj_sub_mapping USING btree (id);

CREATE UNIQUE INDEX siem_cust_ext_apps_pkey ON public.siem_cust_ext_apps USING btree (id);

CREATE INDEX idx_metering_event ON public.siem_cust_metering_event_count USING btree (event_timestamp, asset_id, project_id, subscription_id, customer_id);

CREATE UNIQUE INDEX siem_cust_metering_event_count_pkey ON public.siem_cust_metering_event_count USING btree (id);

CREATE UNIQUE INDEX siem_cust_metering_event_count_agg_daily_pkey ON public.siem_cust_metering_event_count_agg_daily USING btree (id);

CREATE UNIQUE INDEX siem_cust_metering_event_count_agg_hour_pkey ON public.siem_cust_metering_event_count_agg_hour USING btree (id);

CREATE UNIQUE INDEX siem_cust_metering_log_volume_pkey ON public.siem_cust_metering_log_volume USING btree (id);

CREATE UNIQUE INDEX siem_cust_metering_log_volume_agg_hour_pkey ON public.siem_cust_metering_log_volume_agg_hour USING btree (id);

CREATE UNIQUE INDEX siem_cust_notifications_pkey ON public.siem_cust_notifications USING btree (id);

CREATE INDEX idx_sub_subscription_status ON public.siem_cust_subscriptions USING btree (subscription_id, status, updated_on DESC);

CREATE UNIQUE INDEX siem_cust_subscriptions_pkey ON public.siem_cust_subscriptions USING btree (id);

CREATE INDEX siem_cust_testing_subscription ON public.siem_cust_subscriptions USING btree (customer_id, module_initialized);

CREATE INDEX idx_rules_project_category ON public.siem_detection_rules_master USING btree (project_id, category) WHERE ((siem_enabled = true) AND (is_deleted = false));

CREATE INDEX idx_rules_source_category_enabled ON public.siem_detection_rules_master USING btree (source, category, enabled) WHERE ((siem_enabled = true) AND (is_deleted = false));

CREATE INDEX idx_rules_source_enabled ON public.siem_detection_rules_master USING btree (source, enabled) WHERE ((siem_enabled = true) AND (is_deleted = false));

CREATE INDEX idx_rules_updated_created ON public.siem_detection_rules_master USING btree (COALESCE(updated_on, created_on));

CREATE UNIQUE INDEX siem_detection_rules_master_ext_detector_rule_id_key ON public.siem_detection_rules_master USING btree (ext_detector_rule_id);

CREATE UNIQUE INDEX siem_detection_rules_master_pkey ON public.siem_detection_rules_master USING btree (id);

CREATE UNIQUE INDEX siem_detector_proj_sub_mapping_pkey ON public.siem_detector_proj_sub_mapping USING btree (id);

CREATE UNIQUE INDEX siem_ext_app_fields_pkey ON public.siem_ext_app_fields USING btree (id);

CREATE UNIQUE INDEX siem_ext_app_types_pkey ON public.siem_ext_app_types USING btree (id);

CREATE UNIQUE INDEX siem_ext_apps_pkey ON public.siem_ext_apps USING btree (id);

CREATE UNIQUE INDEX siem_ext_logrhythm_alarms_pkey ON public.siem_ext_logrhythm_alarms USING btree (id);

CREATE UNIQUE INDEX unique_alarm_source_alarm_id ON public.siem_ext_logrhythm_alarms USING btree (alarm_source, alarm_id);

CREATE UNIQUE INDEX siem_extract_field_pkey ON public.siem_extract_field USING btree (id);

CREATE UNIQUE INDEX siem_feature_details_pkey ON public.siem_feature_details USING btree (id);

CREATE UNIQUE INDEX siem_finding_rules_636_pkey ON public.siem_finding_rules_636 USING btree (id);

CREATE UNIQUE INDEX siem_findings_636_pkey ON public.siem_findings_636 USING btree (id);

CREATE UNIQUE INDEX siem_flags_config_flag_name_key ON public.siem_flags_config USING btree (flag_name);

CREATE UNIQUE INDEX siem_flags_config_pkey ON public.siem_flags_config USING btree (id);

CREATE UNIQUE INDEX siem_group_master_pkey ON public.siem_group_master USING btree (id);

CREATE UNIQUE INDEX siem_hcmp_process_conf_schema_history_pk ON public.siem_hcmp_process_conf_schema_history USING btree (installed_rank);

CREATE INDEX siem_hcmp_process_conf_schema_history_s_idx ON public.siem_hcmp_process_conf_schema_history USING btree (success);

CREATE UNIQUE INDEX siem_hotfix_nic_hcmp_process_conf_schema_history_pk ON public.siem_hotfix_nic_hcmp_process_conf_schema_history USING btree (installed_rank);

CREATE INDEX siem_hotfix_nic_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_nic_hcmp_process_conf_schema_history USING btree (success);

CREATE UNIQUE INDEX siem_hotfix_prod_hcmp_process_conf_schema_history_pk ON public.siem_hotfix_prod_hcmp_process_conf_schema_history USING btree (installed_rank);

CREATE INDEX siem_hotfix_prod_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_prod_hcmp_process_conf_schema_history USING btree (success);

CREATE UNIQUE INDEX siem_hotfix_sandbox_hcmp_process_conf_schema_history_pk ON public.siem_hotfix_sandbox_hcmp_process_conf_schema_history USING btree (installed_rank);

CREATE INDEX siem_hotfix_sandbox_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_sandbox_hcmp_process_conf_schema_history USING btree (success);

CREATE INDEX idx_t2r_alert_id ON public.siem_incident_master USING btree (alert_id);

CREATE UNIQUE INDEX siem_incident_master_pkey ON public.siem_incident_master USING btree (id);

CREATE UNIQUE INDEX siem_log_field_mapping_pkey ON public.siem_log_field_mapping USING btree (log_type, log_field);

CREATE INDEX idx_siem_log_template_log_type ON public.siem_log_template USING btree (log_type);

CREATE UNIQUE INDEX siem_log_template_pkey ON public.siem_log_template USING btree (log_type, log_field);

CREATE UNIQUE INDEX siem_log_type_ecs_fields_master_pkey ON public.siem_log_type_ecs_fields_master USING btree (log_type, ecs_field);

CREATE INDEX idx_sltm_tech_log_mapping ON public.siem_log_type_technology_mapping USING btree (technology_category_id, technology_id);

CREATE UNIQUE INDEX siem_log_type_technology_mapping_pkey ON public.siem_log_type_technology_mapping USING btree (id);

CREATE INDEX idx_siem_log_types_id ON public.siem_log_types USING btree (id);

CREATE INDEX idx_siem_log_types_log_type ON public.siem_log_types USING btree (log_type);

CREATE INDEX idx_slt_enabled ON public.siem_log_types USING btree (id, is_enabled);

CREATE UNIQUE INDEX siem_log_types_pkey ON public.siem_log_types USING btree (id);

CREATE UNIQUE INDEX siem_log_types_master_pkey ON public.siem_log_types_master USING btree (id);

CREATE UNIQUE INDEX siem_logrhythm_test_alams_pkey ON public.siem_logrhythm_test_alarms USING btree (id, ip_address, bearer_token);

CREATE UNIQUE INDEX siem_logrhythm_test_details_pkey ON public.siem_logrhythm_test_details USING btree (id, ip_address, bearer_token);

CREATE UNIQUE INDEX siem_logrhythm_test_events_pkey ON public.siem_logrhythm_test_events USING btree (id, ip_address, bearer_token);

CREATE UNIQUE INDEX siem_logtype_datasource_map_pkey ON public.siem_logtype_datasource_map USING btree (id);

CREATE UNIQUE INDEX siem_logtype_rule_field_mapping_pkey ON public.siem_logtype_rule_field_mapping USING btree (id);

CREATE UNIQUE INDEX siem_notification_channels_pkey ON public.siem_notification_channels USING btree (id);

CREATE UNIQUE INDEX siem_notification_settings_channel_pkey ON public.siem_notification_settings_channel USING btree (id);

CREATE UNIQUE INDEX siem_notification_settings_template_pkey ON public.siem_notification_settings_template USING btree (id);

CREATE UNIQUE INDEX siem_product_and_sku_codes_pkey ON public.siem_product_and_sku_codes USING btree (meter_id);

CREATE UNIQUE INDEX siem_profile_master_pkey ON public.siem_profile_master USING btree (id);

CREATE UNIQUE INDEX siem_proj_log_volume_pkey ON public.siem_proj_log_volume USING btree (id);

CREATE UNIQUE INDEX siem_project_log_type_event_c_project_id_log_type_start_tim_key ON public.siem_project_log_type_event_count USING btree (project_id, log_type, start_time, end_time);

CREATE UNIQUE INDEX siem_project_log_type_event_count_pkey ON public.siem_project_log_type_event_count USING btree (id);

CREATE UNIQUE INDEX siem_recipients_group_pkey ON public.siem_recipients_group USING btree (id);

CREATE UNIQUE INDEX siem_report_schedules_pkey ON public.siem_report_schedules USING btree (schedule_id);

CREATE UNIQUE INDEX siem_reports_history_pkey ON public.siem_reports_history USING btree (id);

CREATE UNIQUE INDEX siem_reports_proj_sub_mapping_pkey ON public.siem_reports_proj_sub_mapping USING btree (id);

CREATE UNIQUE INDEX siem_standard_report_master_pkey ON public.siem_standard_report_master USING btree (id);

CREATE UNIQUE INDEX siem_t2r_settings_details_pkey ON public.siem_t2r_settings_details USING btree (id);

CREATE UNIQUE INDEX unique_project_id_siem_t2r_settings_details ON public.siem_t2r_settings_details USING btree (project_id);

CREATE UNIQUE INDEX siem_temp_index_pk ON public.siem_temp_index USING btree (index);

CREATE UNIQUE INDEX siem_triggers_pkey ON public.siem_triggers USING btree (id);

CREATE UNIQUE INDEX siem_zato_token_pkey ON public.siem_zato_token USING btree (id);

CREATE UNIQUE INDEX sync_mon_alert_details_pkey ON public.sync_mon_alert_details USING btree (alert_id);

CREATE UNIQUE INDEX test_table_pkey ON public.test_table USING btree (id);
