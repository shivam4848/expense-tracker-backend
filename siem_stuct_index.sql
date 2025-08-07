-- public.mon_alert_actions_action_id_seq definition

-- DROP SEQUENCE public.mon_alert_actions_action_id_seq;

CREATE SEQUENCE public.mon_alert_actions_action_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.mon_alert_actions_action_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.mon_alert_actions_action_id_seq TO siem_admin;


-- public.mon_alert_finding_details_id_seq definition

-- DROP SEQUENCE public.mon_alert_finding_details_id_seq;

CREATE SEQUENCE public.mon_alert_finding_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.mon_alert_finding_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.mon_alert_finding_details_id_seq TO siem_admin;


-- public.mon_app_insight_master_app_id_seq definition

-- DROP SEQUENCE public.mon_app_insight_master_app_id_seq;

CREATE SEQUENCE public.mon_app_insight_master_app_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.mon_app_insight_master_app_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.mon_app_insight_master_app_id_seq TO siem_admin;


-- public.obs_api_status_master_api_id_seq definition

-- DROP SEQUENCE public.obs_api_status_master_api_id_seq;

CREATE SEQUENCE public.obs_api_status_master_api_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.obs_api_status_master_api_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.obs_api_status_master_api_id_seq TO siem_admin;


-- public.sec_cust_asset_master_id_seq definition

-- DROP SEQUENCE public.sec_cust_asset_master_id_seq;

CREATE SEQUENCE public.sec_cust_asset_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.sec_cust_asset_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.sec_cust_asset_master_id_seq TO siem_admin;


-- public.seq_siem_cust_metering_event_count definition

-- DROP SEQUENCE public.seq_siem_cust_metering_event_count;

CREATE SEQUENCE public.seq_siem_cust_metering_event_count
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_cust_metering_event_count OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_cust_metering_event_count TO siem_admin;


-- public.seq_siem_cust_metering_event_count_agg_daily definition

-- DROP SEQUENCE public.seq_siem_cust_metering_event_count_agg_daily;

CREATE SEQUENCE public.seq_siem_cust_metering_event_count_agg_daily
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_cust_metering_event_count_agg_daily OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_cust_metering_event_count_agg_daily TO siem_admin;


-- public.seq_siem_cust_metering_event_count_agg_hour definition

-- DROP SEQUENCE public.seq_siem_cust_metering_event_count_agg_hour;

CREATE SEQUENCE public.seq_siem_cust_metering_event_count_agg_hour
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_cust_metering_event_count_agg_hour OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_cust_metering_event_count_agg_hour TO siem_admin;


-- public.seq_siem_cust_metering_log_volume definition

-- DROP SEQUENCE public.seq_siem_cust_metering_log_volume;

CREATE SEQUENCE public.seq_siem_cust_metering_log_volume
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_cust_metering_log_volume OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_cust_metering_log_volume TO siem_admin;


-- public.seq_siem_cust_metering_log_volume_agg_hour definition

-- DROP SEQUENCE public.seq_siem_cust_metering_log_volume_agg_hour;

CREATE SEQUENCE public.seq_siem_cust_metering_log_volume_agg_hour
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_cust_metering_log_volume_agg_hour OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_cust_metering_log_volume_agg_hour TO siem_admin;


-- public.seq_siem_proj_event_count definition

-- DROP SEQUENCE public.seq_siem_proj_event_count;

CREATE SEQUENCE public.seq_siem_proj_event_count
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_proj_event_count OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_proj_event_count TO siem_admin;


-- public.seq_siem_proj_log_volume definition

-- DROP SEQUENCE public.seq_siem_proj_log_volume;

CREATE SEQUENCE public.seq_siem_proj_log_volume
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.seq_siem_proj_log_volume OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.seq_siem_proj_log_volume TO siem_admin;


-- public.siem_aler_api_status_master_api_id_seq definition

-- DROP SEQUENCE public.siem_aler_api_status_master_api_id_seq;

CREATE SEQUENCE public.siem_aler_api_status_master_api_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_aler_api_status_master_api_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_aler_api_status_master_api_id_seq TO siem_admin;


-- public.siem_alert_sample_documents_id_seq definition

-- DROP SEQUENCE public.siem_alert_sample_documents_id_seq;

CREATE SEQUENCE public.siem_alert_sample_documents_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_alert_sample_documents_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_alert_sample_documents_id_seq TO siem_admin;


-- public.siem_archived_data_request_id_seq definition

-- DROP SEQUENCE public.siem_archived_data_request_id_seq;

CREATE SEQUENCE public.siem_archived_data_request_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_archived_data_request_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_archived_data_request_id_seq TO siem_admin;


-- public.siem_async_actions_id definition

-- DROP SEQUENCE public.siem_async_actions_id;

CREATE SEQUENCE public.siem_async_actions_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_async_actions_id OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_async_actions_id TO siem_admin;


-- public.siem_audit_trail_user_id_seq definition

-- DROP SEQUENCE public.siem_audit_trail_user_id_seq;

CREATE SEQUENCE public.siem_audit_trail_user_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_audit_trail_user_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_audit_trail_user_id_seq TO siem_admin;


-- public.siem_control_board_db_performance_details_id_seq definition

-- DROP SEQUENCE public.siem_control_board_db_performance_details_id_seq;

CREATE SEQUENCE public.siem_control_board_db_performance_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_db_performance_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_db_performance_details_id_seq TO siem_admin;


-- public.siem_control_board_db_schema_size_id_seq definition

-- DROP SEQUENCE public.siem_control_board_db_schema_size_id_seq;

CREATE SEQUENCE public.siem_control_board_db_schema_size_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_db_schema_size_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_db_schema_size_id_seq TO siem_admin;


-- public.siem_control_board_db_tables_size_id_seq definition

-- DROP SEQUENCE public.siem_control_board_db_tables_size_id_seq;

CREATE SEQUENCE public.siem_control_board_db_tables_size_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_db_tables_size_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_db_tables_size_id_seq TO siem_admin;


-- public.siem_control_board_hcmp_index_id_seq definition

-- DROP SEQUENCE public.siem_control_board_hcmp_index_id_seq;

CREATE SEQUENCE public.siem_control_board_hcmp_index_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_hcmp_index_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_hcmp_index_id_seq TO siem_admin;


-- public.siem_control_board_hcmp_shard_id_seq definition

-- DROP SEQUENCE public.siem_control_board_hcmp_shard_id_seq;

CREATE SEQUENCE public.siem_control_board_hcmp_shard_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_hcmp_shard_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_hcmp_shard_id_seq TO siem_admin;


-- public.siem_control_board_internal_index_id_seq definition

-- DROP SEQUENCE public.siem_control_board_internal_index_id_seq;

CREATE SEQUENCE public.siem_control_board_internal_index_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_internal_index_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_internal_index_id_seq TO siem_admin;


-- public.siem_control_board_internal_shard_id_seq definition

-- DROP SEQUENCE public.siem_control_board_internal_shard_id_seq;

CREATE SEQUENCE public.siem_control_board_internal_shard_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_internal_shard_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_internal_shard_id_seq TO siem_admin;


-- public.siem_control_board_jobs_id_seq definition

-- DROP SEQUENCE public.siem_control_board_jobs_id_seq;

CREATE SEQUENCE public.siem_control_board_jobs_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_jobs_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_jobs_id_seq TO siem_admin;


-- public.siem_control_board_kubernetes_id_seq definition

-- DROP SEQUENCE public.siem_control_board_kubernetes_id_seq;

CREATE SEQUENCE public.siem_control_board_kubernetes_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_kubernetes_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_kubernetes_id_seq TO siem_admin;


-- public.siem_control_board_node_cluster_details_id_seq definition

-- DROP SEQUENCE public.siem_control_board_node_cluster_details_id_seq;

CREATE SEQUENCE public.siem_control_board_node_cluster_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_node_cluster_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_node_cluster_details_id_seq TO siem_admin;


-- public.siem_control_board_node_eps_details_id_seq definition

-- DROP SEQUENCE public.siem_control_board_node_eps_details_id_seq;

CREATE SEQUENCE public.siem_control_board_node_eps_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_control_board_node_eps_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_control_board_node_eps_details_id_seq TO siem_admin;


-- public.siem_cust_asset_onboard_master_id_seq definition

-- DROP SEQUENCE public.siem_cust_asset_onboard_master_id_seq;

CREATE SEQUENCE public.siem_cust_asset_onboard_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_asset_onboard_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_asset_onboard_master_id_seq TO siem_admin;


-- public.siem_cust_asset_tech_details_id_seq definition

-- DROP SEQUENCE public.siem_cust_asset_tech_details_id_seq;

CREATE SEQUENCE public.siem_cust_asset_tech_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_asset_tech_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_asset_tech_details_id_seq TO siem_admin;


-- public.siem_cust_correlation_alert_trigger_id_seq definition

-- DROP SEQUENCE public.siem_cust_correlation_alert_trigger_id_seq;

CREATE SEQUENCE public.siem_cust_correlation_alert_trigger_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_correlation_alert_trigger_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_correlation_alert_trigger_id_seq TO siem_admin;


-- public.siem_cust_ext_app_configs_id_seq definition

-- DROP SEQUENCE public.siem_cust_ext_app_configs_id_seq;

CREATE SEQUENCE public.siem_cust_ext_app_configs_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_ext_app_configs_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_ext_app_configs_id_seq TO siem_admin;


-- public.siem_cust_ext_app_proj_sub_mapping_id_seq definition

-- DROP SEQUENCE public.siem_cust_ext_app_proj_sub_mapping_id_seq;

CREATE SEQUENCE public.siem_cust_ext_app_proj_sub_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_ext_app_proj_sub_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_ext_app_proj_sub_mapping_id_seq TO siem_admin;


-- public.siem_cust_ext_apps_id_seq definition

-- DROP SEQUENCE public.siem_cust_ext_apps_id_seq;

CREATE SEQUENCE public.siem_cust_ext_apps_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_ext_apps_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_ext_apps_id_seq TO siem_admin;


-- public.siem_cust_notifications_id_seq definition

-- DROP SEQUENCE public.siem_cust_notifications_id_seq;

CREATE SEQUENCE public.siem_cust_notifications_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_notifications_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_notifications_id_seq TO siem_admin;


-- public.siem_cust_subscriptions_id_seq definition

-- DROP SEQUENCE public.siem_cust_subscriptions_id_seq;

CREATE SEQUENCE public.siem_cust_subscriptions_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_cust_subscriptions_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_cust_subscriptions_id_seq TO siem_admin;


-- public.siem_customer_asset_tech_instance_id_seq definition

-- DROP SEQUENCE public.siem_customer_asset_tech_instance_id_seq;

CREATE SEQUENCE public.siem_customer_asset_tech_instance_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_customer_asset_tech_instance_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_customer_asset_tech_instance_id_seq TO siem_admin;


-- public.siem_data_archival_subscr_settings_id_seq definition

-- DROP SEQUENCE public.siem_data_archival_subscr_settings_id_seq;

CREATE SEQUENCE public.siem_data_archival_subscr_settings_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_data_archival_subscr_settings_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_data_archival_subscr_settings_id_seq TO siem_admin;


-- public.siem_detector_proj_sub_mapping_id_seq definition

-- DROP SEQUENCE public.siem_detector_proj_sub_mapping_id_seq;

CREATE SEQUENCE public.siem_detector_proj_sub_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_detector_proj_sub_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_detector_proj_sub_mapping_id_seq TO siem_admin;


-- public.siem_ext_app_fields_id_seq definition

-- DROP SEQUENCE public.siem_ext_app_fields_id_seq;

CREATE SEQUENCE public.siem_ext_app_fields_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_ext_app_fields_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_ext_app_fields_id_seq TO siem_admin;


-- public.siem_ext_app_types_id_seq definition

-- DROP SEQUENCE public.siem_ext_app_types_id_seq;

CREATE SEQUENCE public.siem_ext_app_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_ext_app_types_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_ext_app_types_id_seq TO siem_admin;


-- public.siem_ext_apps_id_seq definition

-- DROP SEQUENCE public.siem_ext_apps_id_seq;

CREATE SEQUENCE public.siem_ext_apps_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_ext_apps_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_ext_apps_id_seq TO siem_admin;


-- public.siem_ext_logrhythm_alarms_id_seq definition

-- DROP SEQUENCE public.siem_ext_logrhythm_alarms_id_seq;

CREATE SEQUENCE public.siem_ext_logrhythm_alarms_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_ext_logrhythm_alarms_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_ext_logrhythm_alarms_id_seq TO siem_admin;


-- public.siem_extract_field_id_seq definition

-- DROP SEQUENCE public.siem_extract_field_id_seq;

CREATE SEQUENCE public.siem_extract_field_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_extract_field_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_extract_field_id_seq TO siem_admin;


-- public.siem_feature_details_id_seq definition

-- DROP SEQUENCE public.siem_feature_details_id_seq;

CREATE SEQUENCE public.siem_feature_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_feature_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_feature_details_id_seq TO siem_admin;


-- public.siem_field_mapping_seq definition

-- DROP SEQUENCE public.siem_field_mapping_seq;

CREATE SEQUENCE public.siem_field_mapping_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_field_mapping_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_field_mapping_seq TO siem_admin;


-- public.siem_field_mapping_seq2 definition

-- DROP SEQUENCE public.siem_field_mapping_seq2;

CREATE SEQUENCE public.siem_field_mapping_seq2
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_field_mapping_seq2 OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_field_mapping_seq2 TO siem_admin;


-- public.siem_field_mapping_seq3 definition

-- DROP SEQUENCE public.siem_field_mapping_seq3;

CREATE SEQUENCE public.siem_field_mapping_seq3
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_field_mapping_seq3 OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_field_mapping_seq3 TO siem_admin;


-- public.siem_field_mapping_seq123 definition

-- DROP SEQUENCE public.siem_field_mapping_seq123;

CREATE SEQUENCE public.siem_field_mapping_seq123
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_field_mapping_seq123 OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_field_mapping_seq123 TO siem_admin;


-- public.siem_finding_rules_636_id_seq definition

-- DROP SEQUENCE public.siem_finding_rules_636_id_seq;

CREATE SEQUENCE public.siem_finding_rules_636_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_finding_rules_636_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_finding_rules_636_id_seq TO siem_admin;


-- public.siem_findings_636_id_seq definition

-- DROP SEQUENCE public.siem_findings_636_id_seq;

CREATE SEQUENCE public.siem_findings_636_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_findings_636_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_findings_636_id_seq TO siem_admin;


-- public.siem_flags_config_id_seq definition

-- DROP SEQUENCE public.siem_flags_config_id_seq;

CREATE SEQUENCE public.siem_flags_config_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_flags_config_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_flags_config_id_seq TO siem_admin;


-- public.siem_group_master_id_seq definition

-- DROP SEQUENCE public.siem_group_master_id_seq;

CREATE SEQUENCE public.siem_group_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_group_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_group_master_id_seq TO siem_admin;


-- public.siem_hcmp_process_conf_test_10042024_id_seq definition

-- DROP SEQUENCE public.siem_hcmp_process_conf_test_10042024_id_seq;

CREATE SEQUENCE public.siem_hcmp_process_conf_test_10042024_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_hcmp_process_conf_test_10042024_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_hcmp_process_conf_test_10042024_id_seq TO siem_admin;


-- public.siem_incident_master_id_seq definition

-- DROP SEQUENCE public.siem_incident_master_id_seq;

CREATE SEQUENCE public.siem_incident_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_incident_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_incident_master_id_seq TO siem_admin;


-- public.siem_incident_masterrecords_id_seq definition

-- DROP SEQUENCE public.siem_incident_masterrecords_id_seq;

CREATE SEQUENCE public.siem_incident_masterrecords_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_incident_masterrecords_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_incident_masterrecords_id_seq TO siem_admin;


-- public.siem_log_type_technology_mapping_id_seq definition

-- DROP SEQUENCE public.siem_log_type_technology_mapping_id_seq;

CREATE SEQUENCE public.siem_log_type_technology_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_log_type_technology_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_log_type_technology_mapping_id_seq TO siem_admin;


-- public.siem_log_types_id_seq definition

-- DROP SEQUENCE public.siem_log_types_id_seq;

CREATE SEQUENCE public.siem_log_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_log_types_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_log_types_id_seq TO siem_admin;


-- public.siem_log_types_master_id_seq definition

-- DROP SEQUENCE public.siem_log_types_master_id_seq;

CREATE SEQUENCE public.siem_log_types_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_log_types_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_log_types_master_id_seq TO siem_admin;


-- public.siem_logtype_datasource_map_id_seq definition

-- DROP SEQUENCE public.siem_logtype_datasource_map_id_seq;

CREATE SEQUENCE public.siem_logtype_datasource_map_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_logtype_datasource_map_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_logtype_datasource_map_id_seq TO siem_admin;


-- public.siem_logtype_rule_field_mapping_id_seq definition

-- DROP SEQUENCE public.siem_logtype_rule_field_mapping_id_seq;

CREATE SEQUENCE public.siem_logtype_rule_field_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_logtype_rule_field_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_logtype_rule_field_mapping_id_seq TO siem_admin;


-- public.siem_metering_archive_primary_id definition

-- DROP SEQUENCE public.siem_metering_archive_primary_id;

CREATE SEQUENCE public.siem_metering_archive_primary_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_metering_archive_primary_id OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_metering_archive_primary_id TO siem_admin;


-- public.siem_metering_id definition

-- DROP SEQUENCE public.siem_metering_id;

CREATE SEQUENCE public.siem_metering_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_metering_id OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_metering_id TO siem_admin;


-- public.siem_metering_primary_id definition

-- DROP SEQUENCE public.siem_metering_primary_id;

CREATE SEQUENCE public.siem_metering_primary_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_metering_primary_id OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_metering_primary_id TO siem_admin;


-- public.siem_notification_channels_id_seq definition

-- DROP SEQUENCE public.siem_notification_channels_id_seq;

CREATE SEQUENCE public.siem_notification_channels_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_notification_channels_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_notification_channels_id_seq TO siem_admin;


-- public.siem_notification_settings_channel_id_seq definition

-- DROP SEQUENCE public.siem_notification_settings_channel_id_seq;

CREATE SEQUENCE public.siem_notification_settings_channel_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_notification_settings_channel_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_notification_settings_channel_id_seq TO siem_admin;


-- public.siem_notification_settings_template_id_seq definition

-- DROP SEQUENCE public.siem_notification_settings_template_id_seq;

CREATE SEQUENCE public.siem_notification_settings_template_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_notification_settings_template_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_notification_settings_template_id_seq TO siem_admin;


-- public.siem_profile_master_id_seq definition

-- DROP SEQUENCE public.siem_profile_master_id_seq;

CREATE SEQUENCE public.siem_profile_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_profile_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_profile_master_id_seq TO siem_admin;


-- public.siem_project_log_type_event_count_id_seq definition

-- DROP SEQUENCE public.siem_project_log_type_event_count_id_seq;

CREATE SEQUENCE public.siem_project_log_type_event_count_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_project_log_type_event_count_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_project_log_type_event_count_id_seq TO siem_admin;


-- public.siem_recipients_group_id_seq definition

-- DROP SEQUENCE public.siem_recipients_group_id_seq;

CREATE SEQUENCE public.siem_recipients_group_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_recipients_group_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_recipients_group_id_seq TO siem_admin;


-- public.siem_report_schedules_schedule_id_seq definition

-- DROP SEQUENCE public.siem_report_schedules_schedule_id_seq;

CREATE SEQUENCE public.siem_report_schedules_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_report_schedules_schedule_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_report_schedules_schedule_id_seq TO siem_admin;


-- public.siem_reports_history_id_seq definition

-- DROP SEQUENCE public.siem_reports_history_id_seq;

CREATE SEQUENCE public.siem_reports_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_reports_history_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_reports_history_id_seq TO siem_admin;


-- public.siem_reports_proj_sub_mapping_id_seq definition

-- DROP SEQUENCE public.siem_reports_proj_sub_mapping_id_seq;

CREATE SEQUENCE public.siem_reports_proj_sub_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_reports_proj_sub_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_reports_proj_sub_mapping_id_seq TO siem_admin;


-- public.siem_rule_field_mapping_seq definition

-- DROP SEQUENCE public.siem_rule_field_mapping_seq;

CREATE SEQUENCE public.siem_rule_field_mapping_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_rule_field_mapping_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_rule_field_mapping_seq TO siem_admin;


-- public.siem_sku_by_projsubsr_id_seq definition

-- DROP SEQUENCE public.siem_sku_by_projsubsr_id_seq;

CREATE SEQUENCE public.siem_sku_by_projsubsr_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_sku_by_projsubsr_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_sku_by_projsubsr_id_seq TO siem_admin;


-- public.siem_snapshot_info_id_seq definition

-- DROP SEQUENCE public.siem_snapshot_info_id_seq;

CREATE SEQUENCE public.siem_snapshot_info_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_snapshot_info_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_snapshot_info_id_seq TO siem_admin;


-- public.siem_standard_report_master_id_seq definition

-- DROP SEQUENCE public.siem_standard_report_master_id_seq;

CREATE SEQUENCE public.siem_standard_report_master_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_standard_report_master_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_standard_report_master_id_seq TO siem_admin;


-- public.siem_t2r_settings_details_id_seq definition

-- DROP SEQUENCE public.siem_t2r_settings_details_id_seq;

CREATE SEQUENCE public.siem_t2r_settings_details_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_t2r_settings_details_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_t2r_settings_details_id_seq TO siem_admin;


-- public.siem_threat_intelligence_feeds_id_seq definition

-- DROP SEQUENCE public.siem_threat_intelligence_feeds_id_seq;

CREATE SEQUENCE public.siem_threat_intelligence_feeds_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_threat_intelligence_feeds_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_threat_intelligence_feeds_id_seq TO siem_admin;


-- public.siem_threat_intelligence_feeds_project_mapping_id_seq definition

-- DROP SEQUENCE public.siem_threat_intelligence_feeds_project_mapping_id_seq;

CREATE SEQUENCE public.siem_threat_intelligence_feeds_project_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_threat_intelligence_feeds_project_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_threat_intelligence_feeds_project_mapping_id_seq TO siem_admin;


-- public.siem_threat_intelligence_fields_feed_mapping_id_seq definition

-- DROP SEQUENCE public.siem_threat_intelligence_fields_feed_mapping_id_seq;

CREATE SEQUENCE public.siem_threat_intelligence_fields_feed_mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_threat_intelligence_fields_feed_mapping_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_threat_intelligence_fields_feed_mapping_id_seq TO siem_admin;


-- public.siem_threat_intelligence_fields_id_seq definition

-- DROP SEQUENCE public.siem_threat_intelligence_fields_id_seq;

CREATE SEQUENCE public.siem_threat_intelligence_fields_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_threat_intelligence_fields_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_threat_intelligence_fields_id_seq TO siem_admin;


-- public.siem_triggers_id_seq definition

-- DROP SEQUENCE public.siem_triggers_id_seq;

CREATE SEQUENCE public.siem_triggers_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.siem_triggers_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.siem_triggers_id_seq TO siem_admin;


-- public.test_table_id_seq definition

-- DROP SEQUENCE public.test_table_id_seq;

CREATE SEQUENCE public.test_table_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.test_table_id_seq OWNER TO siem_admin;
GRANT ALL ON SEQUENCE public.test_table_id_seq TO siem_admin;
