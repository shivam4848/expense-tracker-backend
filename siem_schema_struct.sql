-- public."MON_ALERT_DETAILS" definition

-- Drop table

-- DROP TABLE public."MON_ALERT_DETAILS";

CREATE TABLE public."MON_ALERT_DETAILS" (
	"ALERT_ID" varchar(500) NULL,
	"CUSTOMER_ID" int8 NULL,
	"PROJECT_ID" int8 NULL,
	"SUBSCRIPTION_ID" int8 NULL,
	"RESOURCE_ID" int8 NULL,
	"RESOURCE_TYPE" varchar(500) NULL,
	"AGENT_ID" varchar(500) NULL,
	"PLUGIN_NAME" varchar(500) NULL,
	"ALERT_TYPE" varchar(500) NULL,
	"PLUGIN_TYPE" varchar(500) NULL,
	"PLUGIN_SUBTYPE" varchar(500) NULL,
	"TITLE" varchar(1000) NULL,
	"DESCRIPTION" varchar(2000) NULL,
	"SEVERITY" varchar(100) NULL,
	"VALUE_LABELS" varchar(100) NULL,
	"THRESHOLD_EXPRESSION" varchar(100) NULL,
	"RULE_ID" int4 NULL,
	"PLUGIN_ID" int8 NULL,
	"IPADDRESS" varchar(500) NULL,
	"HOSTNAME" varchar(100) NULL,
	"CREATED_ON" date NULL,
	"UPDATED_ON" date NULL,
	"CLOSED_ON" date NULL,
	"STATE" varchar(100) DEFAULT 'Open'::character varying NULL,
	"OCCURRENCE_COUNT" int8 NULL,
	"INSERT_ON" date DEFAULT CURRENT_TIMESTAMP NULL,
	"INSERT_BY" varchar(100) NULL,
	"ACK_TIME" date NULL,
	"ACK_BY" varchar(100) NULL,
	"ACK_ID" varchar(100) NULL,
	"LAST_UPDATE_TIME" date NULL,
	"LAST_UPDATE_BY" varchar(100) NULL,
	"STATUS" varchar(100) DEFAULT 'Open'::character varying NULL,
	"VALUE" varchar(100) NULL,
	"LAST_UPDATE_CATEGORY" varchar(100) NULL,
	"HIERACHY_MAP_ID" int8 NULL,
	"CLOSURE_TIME" int8 NULL,
	"METRIC_ID" int8 NULL,
	"ASSETID" numeric NULL,
	"ASSET_TYPE" varchar(50) NULL,
	"HIERARCHY_NAME" varchar(100) NULL,
	"TECHNOLOGY_CATEGORY" varchar(100) NULL,
	"TECHNOLOGY_NAME" varchar(50) NULL,
	"METRIC_NAME" varchar(100) NULL,
	"ENVIORMENT" varchar(100) NULL,
	"COLLABORATION_FLAG" bpchar(1) DEFAULT 'Y'::bpchar NULL,
	"INSTANCE_ID" varchar(50) NULL,
	"DESCRIPTOR_ID" int8 NULL,
	"DESCRIPTOR_NAME" varchar(250) NULL,
	"ALERT_UUID" varchar(100) NULL,
	"ETA_DATE" date NULL,
	"RACI" varchar(4000) NULL,
	"MASTER_ALERT_ID" varchar(100) NULL,
	"ESCALATION_LEVEL" int8 NULL,
	"ESCALATION_SLA" timestamp NULL,
	"CLOSED_SLA" timestamp NULL,
	"R_UUID" varchar(200) NULL,
	"RECORDID" varchar(100) NULL,
	"ALERT_IMPACT" float8 NULL,
	"SERVICE" varchar(5) NULL,
	"PURPOSE" int8 NULL
);

-- Permissions

ALTER TABLE public."MON_ALERT_DETAILS" OWNER TO siem_admin;
GRANT ALL ON TABLE public."MON_ALERT_DETAILS" TO siem_admin;


-- public.alert_back definition

-- Drop table

-- DROP TABLE public.alert_back;

CREATE TABLE public.alert_back (
	purpose text NULL,
	customer_id text NULL,
	project_id text NULL,
	subscription_id text NULL,
	resource_id text NULL,
	rule_id text NULL,
	plugin_id text NULL,
	created_on text NULL,
	updated_on text NULL,
	closed_on text NULL,
	occurrence_count text NULL,
	insert_on text NULL,
	ack_time text NULL,
	last_update_time text NULL,
	hierachy_map_id text NULL,
	closure_time text NULL,
	metric_id text NULL,
	assetid text NULL,
	descriptor_id text NULL,
	eta_date text NULL,
	escalation_level text NULL,
	escalation_sla text NULL,
	closed_sla text NULL,
	alert_impact text NULL,
	service text NULL,
	descriptor_name text NULL,
	insert_by text NULL,
	alert_uuid text NULL,
	ack_by text NULL,
	ack_id text NULL,
	r_uuid text NULL,
	last_update_by text NULL,
	status text NULL,
	value text NULL,
	last_update_category text NULL,
	raci text NULL,
	master_alert_id text NULL,
	recordid text NULL,
	alert_id text NULL,
	asset_type text NULL,
	hierarchy_name text NULL,
	technology_category text NULL,
	resource_type text NULL,
	agent_id text NULL,
	plugin_name text NULL,
	alert_type text NULL,
	plugin_type text NULL,
	plugin_subtype text NULL,
	title text NULL,
	description text NULL,
	severity text NULL,
	value_labels text NULL,
	threshold_expression text NULL,
	technology_name text NULL,
	metric_name text NULL,
	ipaddress text NULL,
	hostname text NULL,
	enviorment text NULL,
	collaboration_flag text NULL,
	instance_id text NULL,
	state text NULL,
	enviornment varchar(255) NULL,
	detetctor_name varchar NULL,
	log_type_id int8 NULL,
	detector int8 NULL,
	detector_id int8 NULL,
	"purpose	customer_id	project_id	subscription_id	resource_id	rule" varchar(1024) NULL
);

-- Permissions

ALTER TABLE public.alert_back OWNER TO siem_admin;
GRANT ALL ON TABLE public.alert_back TO siem_admin;


-- public.mon_alert_actions definition

-- Drop table

-- DROP TABLE public.mon_alert_actions;

CREATE TABLE public.mon_alert_actions (
	action_id bigserial NOT NULL,
	action_category varchar(255) NOT NULL,
	action_details varchar(255) NOT NULL,
	action_type varchar(255) NOT NULL,
	alert_id varchar(255) NOT NULL,
	customer_id int8 NOT NULL,
	escalation_level varchar(255) NULL,
	eta timestamp(6) NULL,
	insert_by_id varchar(255) NOT NULL,
	insert_on timestamp(6) NOT NULL,
	notified_to varchar(255) NULL,
	remarks varchar(255) NOT NULL,
	responsible_id varchar(255) NULL,
	"2023011316101529933	636	2626	841	157892	2	7ed17ff6704fd50deba0c" varchar(1024) NULL,
	CONSTRAINT mon_alert_actions_pkey PRIMARY KEY (action_id)
);

-- Permissions

ALTER TABLE public.mon_alert_actions OWNER TO siem_admin;
GRANT ALL ON TABLE public.mon_alert_actions TO siem_admin;


-- public.mon_alert_details_2 definition

-- Drop table

-- DROP TABLE public.mon_alert_details_2;

CREATE TABLE public.mon_alert_details_2 (
	purpose float4 NULL,
	customer_id int4 NULL,
	project_id int4 NULL,
	subscription_id int4 NULL,
	resource_id int4 NULL,
	rule_id int4 NULL,
	plugin_id varchar(50) NULL,
	created_on varchar(50) NULL,
	updated_on varchar(50) NULL,
	closed_on int4 NULL,
	occurrence_count int4 NULL,
	insert_on varchar(50) NULL,
	ack_time varchar(50) NULL,
	last_update_time varchar(50) NULL,
	hierachy_map_id int4 NULL,
	closure_time varchar(50) NULL,
	metric_id int4 NULL,
	assetid float4 NULL,
	descriptor_id varchar(50) NULL,
	eta_date varchar(50) NULL,
	escalation_level varchar(50) NULL,
	escalation_sla varchar(50) NULL,
	closed_sla varchar(50) NULL,
	alert_impact varchar(50) NULL,
	service varchar(50) NULL,
	descriptor_name varchar(50) NULL,
	insert_by varchar(50) NULL,
	alert_uuid varchar(50) NULL,
	ack_by varchar(50) NULL,
	ack_id varchar(50) NULL,
	r_uuid varchar(50) NULL,
	last_update_by varchar(50) NULL,
	status varchar(50) NULL,
	value int4 NULL,
	last_update_category varchar(50) NULL,
	raci varchar(50) NULL,
	master_alert_id varchar(50) NULL,
	recordid float4 NULL,
	alert_id float4 NULL,
	asset_type varchar(50) NULL,
	hierarchy_name varchar(50) NULL,
	technology_category varchar(50) NULL,
	resource_type varchar(50) NULL,
	agent_id varchar(50) NULL,
	plugin_name varchar(50) NULL,
	alert_type varchar(50) NULL,
	plugin_type varchar(50) NULL,
	plugin_subtype varchar(50) NULL,
	title varchar(50) NULL,
	description varchar(50) NULL,
	severity varchar(50) NULL,
	value_labels varchar(50) NULL,
	threshold_expression varchar(50) NULL,
	technology_name int4 NULL,
	metric_name varchar(50) NULL,
	ipaddress varchar(50) NULL,
	hostname varchar(50) NULL,
	enviorment varchar(50) NULL,
	collaboration_flag varchar(50) NULL,
	instance_id varchar(50) NULL,
	state varchar(50) NULL,
	enviornment varchar(50) NULL,
	detetctor_name varchar(50) NULL,
	log_type_id varchar(50) NULL,
	detector varchar(50) NULL,
	detector_id varchar(50) NULL
);

-- Permissions

ALTER TABLE public.mon_alert_details_2 OWNER TO siem_admin;
GRANT ALL ON TABLE public.mon_alert_details_2 TO siem_admin;


-- public.mon_app_insight_master definition

-- Drop table

-- DROP TABLE public.mon_app_insight_master;

CREATE TABLE public.mon_app_insight_master (
	app_id bigserial NOT NULL,
	hierarchy_id varchar(255) NULL,
	platform varchar(255) NULL,
	"section" varchar(255) NULL,
	status varchar(255) NULL,
	CONSTRAINT mon_app_insight_master_pkey PRIMARY KEY (app_id)
);

-- Permissions

ALTER TABLE public.mon_app_insight_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.mon_app_insight_master TO siem_admin;


-- public.obs_api_status_master definition

-- Drop table

-- DROP TABLE public.obs_api_status_master;

CREATE TABLE public.obs_api_status_master (
	api_id bigserial NOT NULL,
	service_name varchar(255) NOT NULL,
	api_url varchar(255) NOT NULL,
	service_description varchar(255) NOT NULL,
	status varchar(255) NOT NULL,
	created_on timestamp NOT NULL,
	updated_on timestamp NULL,
	created_by_id varchar(255) NOT NULL,
	updated_by_id varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	updated_by varchar(255) NOT NULL,
	CONSTRAINT obs_api_status_master_pkey PRIMARY KEY (api_id)
);

-- Permissions

ALTER TABLE public.obs_api_status_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.obs_api_status_master TO siem_admin;


-- public.shedlock definition

-- Drop table

-- DROP TABLE public.shedlock;

CREATE TABLE public.shedlock (
	"name" varchar(64) DEFAULT 'schedulerLock0'::character varying NOT NULL,
	lock_until timestamp NULL,
	locked_at timestamp NULL,
	locked_by varchar(255) DEFAULT 'siem_admin_core'::character varying NULL,
	CONSTRAINT shedlock_pkey PRIMARY KEY (name)
);

-- Permissions

ALTER TABLE public.shedlock OWNER TO siem_admin;
GRANT ALL ON TABLE public.shedlock TO siem_admin;


-- public.siem_aler_api_status_master definition

-- Drop table

-- DROP TABLE public.siem_aler_api_status_master;

CREATE TABLE public.siem_aler_api_status_master (
	api_id serial4 NOT NULL,
	service_name varchar(255) NOT NULL,
	api_url varchar(255) NOT NULL,
	service_description varchar(255) NOT NULL,
	status varchar(255) NOT NULL,
	created_on timestamp NOT NULL,
	updated_on timestamp NULL,
	created_by_id varchar(255) NOT NULL,
	updated_by_id varchar(255) NOT NULL,
	created_by varchar(255) NOT NULL,
	updated_by varchar(255) NOT NULL,
	CONSTRAINT siem_aler_api_status_master_pkey PRIMARY KEY (api_id)
);

-- Permissions

ALTER TABLE public.siem_aler_api_status_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_aler_api_status_master TO siem_admin;


-- public.siem_alert_actions definition

-- Drop table

-- DROP TABLE public.siem_alert_actions;

CREATE TABLE public.siem_alert_actions (
	action_id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NOT NULL,
	alert_id varchar(100) NOT NULL,
	action_type varchar(100) NOT NULL,
	action_category varchar(100) NOT NULL,
	remarks varchar(1000) NOT NULL,
	action_details varchar(2000) NULL,
	insert_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	insert_by_id varchar(100) NULL,
	wf_id varchar(100) NULL,
	eta timestamp NULL,
	notified_to varchar(100) NULL,
	escalation_level varchar(255) NULL,
	responsible_id varchar(255) NULL,
	CONSTRAINT "MON_ALERT_ACTIONS_pkey" PRIMARY KEY (action_id)
);
CREATE INDEX idx_alert_actions_alert_id ON public.siem_alert_actions USING btree (alert_id);

-- Permissions

ALTER TABLE public.siem_alert_actions OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_actions TO siem_admin;


-- public.siem_alert_auto_closure_config definition

-- Drop table

-- DROP TABLE public.siem_alert_auto_closure_config;

CREATE TABLE public.siem_alert_auto_closure_config (
	customer_id int8 NOT NULL,
	project_id int8 NOT NULL,
	config jsonb NULL,
	created_on timestamp NULL,
	created_by varchar(500) NULL,
	created_by_id int8 NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	updated_by_id int8 NULL,
	enabled bool DEFAULT true NULL,
	CONSTRAINT siem_alert_auto_closure_config_pkey PRIMARY KEY (customer_id, project_id)
);
CREATE INDEX customer_project_id ON public.siem_alert_auto_closure_config USING btree (customer_id, project_id);

-- Permissions

ALTER TABLE public.siem_alert_auto_closure_config OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_auto_closure_config TO siem_admin;


-- public.siem_alert_closure_config definition

-- Drop table

-- DROP TABLE public.siem_alert_closure_config;

CREATE TABLE public.siem_alert_closure_config (
	customer_id int8 NOT NULL,
	config jsonb NULL,
	created_on timestamp NULL,
	created_by varchar(500) NULL,
	created_by_id int8 NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	updated_by_id int8 NULL,
	CONSTRAINT siem_alert_closure_config_pkey PRIMARY KEY (customer_id)
);

-- Permissions

ALTER TABLE public.siem_alert_closure_config OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_closure_config TO siem_admin;


-- public.siem_alert_details definition

-- Drop table

-- DROP TABLE public.siem_alert_details;

CREATE TABLE public.siem_alert_details (
	alert_id varchar(500) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	resource_id int8 NULL,
	resource_type varchar(500) NULL,
	agent_id varchar(500) NULL,
	plugin_name varchar(500) NULL,
	alert_type varchar(500) NULL,
	plugin_type varchar(500) NULL,
	plugin_subtype varchar(500) NULL,
	title varchar(1000) NULL,
	description varchar(2000) NULL,
	severity varchar(100) NULL,
	value_labels varchar(100) NULL,
	threshold_expression varchar(100) NULL,
	plugin_id int8 NULL,
	ipaddress varchar(500) NULL,
	hostname varchar(100) NULL,
	created_on timestamp(6) NULL,
	updated_on timestamp(6) NULL,
	closed_on timestamp(6) NULL,
	state varchar(100) DEFAULT 'open'::character varying NULL,
	occurrence_count int8 NULL,
	insert_on timestamp(6) DEFAULT CURRENT_TIMESTAMP NULL,
	insert_by varchar(100) NULL,
	ack_time timestamp(6) NULL,
	ack_by varchar(100) NULL,
	ack_id varchar(100) NULL,
	last_update_time timestamp(6) NULL,
	last_update_by varchar(100) NULL,
	status varchar(100) DEFAULT 'open'::character varying NULL,
	value varchar(100) NULL,
	last_update_category varchar(100) NULL,
	hierachy_map_id int8 NULL,
	closure_time int8 NULL,
	metric_id int8 NULL,
	assetid varchar(255) NULL,
	asset_type varchar(50) NULL,
	hierarchy_name varchar(100) NULL,
	technology_category varchar(100) NULL,
	technology_name varchar(50) NULL,
	metric_name varchar(100) NULL,
	enviorment varchar(100) NULL,
	collaboration_flag varchar(255) DEFAULT 'y'::bpchar NULL,
	instance_id varchar(50) NULL,
	descriptor_id int8 NULL,
	descriptor_name varchar(250) NULL,
	alert_uuid varchar(100) NULL,
	eta_date timestamp(6) NULL,
	raci varchar(4000) NULL,
	master_alert_id varchar(100) NULL,
	escalation_level int8 NULL,
	escalation_sla timestamp NULL,
	closed_sla timestamp NULL,
	r_uuid varchar(200) NULL,
	recordid varchar(100) NULL,
	alert_impact int8 NULL,
	service varchar(5) NULL,
	purpose int8 NULL,
	enviornment varchar(255) NULL,
	detector_id int8 DEFAULT 1820 NULL,
	ext_rule_id varchar DEFAULT '63647769-326d-4dde-a419-b925cc0caf42'::character varying NULL,
	rule_id varchar(255) NULL,
	ext_trigger_id varchar NULL,
	"source" varchar(50) NULL,
	parent_alert varchar NULL,
	track varchar(255) NULL,
	CONSTRAINT mon_alert_details_pkey PRIMARY KEY (alert_id)
);
CREATE INDEX customer_id_idx ON public.siem_alert_details USING btree (customer_id) WITH (deduplicate_items='true');
CREATE INDEX insert_on_idx ON public.siem_alert_details USING btree (insert_on) WITH (deduplicate_items='true');
CREATE INDEX siem_alert_details_proj_index ON public.siem_alert_details USING btree (project_id);
CREATE INDEX siem_alert_details_severity_index ON public.siem_alert_details USING btree (severity);
CREATE INDEX siem_alert_details_source_index ON public.siem_alert_details USING btree (source);
CREATE INDEX siem_alert_details_status_index ON public.siem_alert_details USING btree (status);
CREATE INDEX siem_alert_details_sub_index ON public.siem_alert_details USING btree (subscription_id);
CREATE INDEX sync_customer_id_idx ON public.siem_alert_details USING btree (customer_id) WITH (deduplicate_items='true');
CREATE INDEX sync_insert_on_idx ON public.siem_alert_details USING btree (insert_on) WITH (deduplicate_items='true');

-- Table Triggers

create trigger after_insert_alert after
insert
    on
    public.siem_alert_details for each row execute function trg_update_related_alerts();
create trigger before_insert_siem_alert_details_set_default_status before
insert
    on
    public.siem_alert_details for each row execute function set_default_status();
create trigger change_status_parent_count_table after
update
    of status on
    public.siem_alert_details for each row execute function update_parent_alert_status();

-- Permissions

ALTER TABLE public.siem_alert_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_details TO siem_admin;


-- public.siem_alert_finding_details definition

-- Drop table

-- DROP TABLE public.siem_alert_finding_details;

CREATE TABLE public.siem_alert_finding_details (
	id int8 DEFAULT nextval('mon_alert_finding_details_id_seq'::regclass) NOT NULL,
	alert_id varchar NOT NULL,
	finding_id varchar NULL,
	finding_doc text NULL,
	event_doc text NULL,
	index_name varchar NULL,
	document_id varchar NULL,
	finding_timestamp timestamp NULL,
	event_timestamp timestamp NULL,
	CONSTRAINT siem_alert_finding_details_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_safd_alert_id ON public.siem_alert_finding_details USING btree (alert_id);
CREATE INDEX idx_safd_document_id ON public.siem_alert_finding_details USING btree (document_id);
CREATE INDEX idx_safd_finding_id ON public.siem_alert_finding_details USING btree (finding_id);

-- Permissions

ALTER TABLE public.siem_alert_finding_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_finding_details TO siem_admin;


-- public.siem_alert_parent_count_details definition

-- Drop table

-- DROP TABLE public.siem_alert_parent_count_details;

CREATE TABLE public.siem_alert_parent_count_details (
	parent_alert varchar(500) NOT NULL,
	related_alert_count int4 NULL,
	parent_alert_status varchar NULL,
	CONSTRAINT siem_alert_parent_count_details_pkey PRIMARY KEY (parent_alert)
);

-- Table Triggers

create trigger trigger_update_summary_from_parent_count after
insert
    or
delete
    or
update
    on
    public.siem_alert_parent_count_details for each row execute function update_siem_alerts_summary_from_parent_count();

-- Permissions

ALTER TABLE public.siem_alert_parent_count_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_parent_count_details TO siem_admin;


-- public.siem_alert_sample_documents definition

-- Drop table

-- DROP TABLE public.siem_alert_sample_documents;

CREATE TABLE public.siem_alert_sample_documents (
	id bigserial NOT NULL,
	alert_id varchar(255) NULL,
	sample_documents text NULL,
	processed_timestamp timestamp NULL,
	ingested_timestamp timestamp NULL,
	CONSTRAINT siem_alert_sample_documents_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_alert_sample_documents_alert_id ON public.siem_alert_sample_documents USING btree (alert_id);

-- Permissions

ALTER TABLE public.siem_alert_sample_documents OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alert_sample_documents TO siem_admin;


-- public.siem_alerts_summary definition

-- Drop table

-- DROP TABLE public.siem_alerts_summary;

CREATE TABLE public.siem_alerts_summary (
	alert_id varchar(255) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	project_name varchar(255) NULL,
	subscription_id int8 NULL,
	subscription_name varchar(255) NULL,
	title varchar(255) NULL,
	description text NULL,
	severity varchar(255) NULL,
	hostname varchar(255) NULL,
	closed_on timestamp NULL,
	state varchar(255) NULL,
	insert_on timestamp NULL,
	ack_time timestamp NULL,
	ack_by varchar(255) NULL,
	ack_id varchar(255) NULL,
	last_update_time timestamp NULL,
	last_update_by varchar(255) NULL,
	status varchar(255) NULL,
	last_update_category varchar(255) NULL,
	hierarchy_map_id int8 NULL,
	assetid varchar(255) NULL,
	hierarchy_name varchar(255) NULL,
	technology_category varchar(255) NULL,
	technology_name varchar(255) NULL,
	instance_id varchar(255) NULL,
	alert_uuid varchar(255) NULL,
	detector_id int8 NULL,
	ext_rule_id varchar(255) NULL,
	detector_name varchar(255) NULL,
	log_type_id int8 NULL,
	logtype_name varchar(255) NULL,
	detection_rule_id int8 NULL,
	detection_rule varchar(255) NULL,
	incident_count int8 NULL,
	primary_ipaddress varchar(255) NULL,
	resource_type_name varchar(255) NULL,
	public_ipaddress varchar(255) NULL,
	ext_trigger_id varchar(255) NULL,
	"source" varchar(255) NULL,
	track varchar(255) NULL,
	related_alert_count int8 NULL,
	alert_type varchar(50) NULL,
	parent_alert_id varchar(255) NULL,
	environment varchar(50) NULL,
	eta_date timestamp NULL,
	record_id varchar(100) NULL,
	rule_type varchar(255) DEFAULT 'Detection Rule'::character varying NULL,
	correlation_logtype_id _int8 NULL,
	correlation_logtype_name _varchar NULL,
	correlation_rule_condition text NULL,
	metrics varchar NULL,
	CONSTRAINT siem_alerts_summary_pkey PRIMARY KEY (alert_id)
);
CREATE INDEX idx_alert_uuid_parent_alert_id_alert_type ON public.siem_alerts_summary USING btree (alert_uuid, parent_alert_id, alert_type);
CREATE INDEX idx_alerts_summary_parent_alert_id_alert_type ON public.siem_alerts_summary USING btree (parent_alert_id, alert_type);
CREATE INDEX idx_siem_alerts_summary_alert_type_status ON public.siem_alerts_summary USING btree (alert_type, status);
CREATE INDEX idx_siem_alerts_summary_customer_project ON public.siem_alerts_summary USING btree (customer_id, project_id);
CREATE INDEX idx_siem_alerts_summary_insert_on ON public.siem_alerts_summary USING btree (insert_on);
CREATE INDEX idx_siem_alerts_summary_parent_alert_id ON public.siem_alerts_summary USING btree (parent_alert_id);
CREATE INDEX siem_alerts_summary_parent_alert_id_alert_type_idx ON public.siem_alerts_summary USING btree (parent_alert_id, alert_type);

-- Table Triggers

create trigger trg_update_related_alert_count after
insert
    on
    public.siem_alerts_summary for each row execute function update_related_alert_count_on_insert();

-- Permissions

ALTER TABLE public.siem_alerts_summary OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alerts_summary TO siem_admin;


-- public.siem_alerts_testing definition

-- Drop table

-- DROP TABLE public.siem_alerts_testing;

CREATE TABLE public.siem_alerts_testing (
	alert_id varchar(255) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	project_name varchar(255) NULL,
	subscription_id int8 NULL,
	subscription_name varchar(255) NULL,
	title varchar(255) NULL,
	description text NULL,
	severity varchar(255) NULL,
	hostname varchar(255) NULL,
	closed_on timestamp NULL,
	state varchar(255) NULL,
	insert_on timestamp NULL,
	ack_time timestamp NULL,
	ack_by varchar(255) NULL,
	ack_id varchar(255) NULL,
	last_update_time timestamp NULL,
	last_update_by varchar(255) NULL,
	status varchar(255) NULL,
	last_update_category varchar(255) NULL,
	hierarchy_map_id int8 NULL,
	assetid varchar(255) NULL,
	hierarchy_name varchar(255) NULL,
	technology_category varchar(255) NULL,
	technology_name varchar(255) NULL,
	instance_id varchar(255) NULL,
	alert_uuid varchar(255) NULL,
	detector_id int8 NULL,
	ext_rule_id varchar(255) NULL,
	detector_name varchar(255) NULL,
	log_type_id int8 NULL,
	logtype_name varchar(255) NULL,
	detection_rule_id int8 NULL,
	detection_rule varchar(255) NULL,
	incident_count int8 NULL,
	primary_ipaddress varchar(255) NULL,
	resource_type_name varchar(255) NULL,
	public_ipaddress varchar(255) NULL,
	ext_trigger_id varchar(255) NULL,
	"source" varchar(255) NULL,
	track varchar(255) NULL,
	related_alert_count int8 NULL,
	alert_type varchar(50) NULL,
	parent_alert_id varchar(255) NULL,
	environment varchar(50) NULL,
	eta_date timestamp NULL,
	record_id varchar(100) NULL,
	CONSTRAINT siem_alerts_testing_pkey PRIMARY KEY (alert_id)
);

-- Permissions

ALTER TABLE public.siem_alerts_testing OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_alerts_testing TO siem_admin;


-- public.siem_archived_data_request definition

-- Drop table

-- DROP TABLE public.siem_archived_data_request;

CREATE TABLE public.siem_archived_data_request (
	id bigserial NOT NULL,
	request_id varchar(50) NULL,
	request_start_time timestamp NULL,
	project_id int8 NULL,
	customer_id int8 NULL,
	subscr_id int8 NULL,
	request_end_time timestamp NULL,
	status varchar(50) NULL,
	created_by varchar(50) NULL,
	log_type varchar NULL,
	duration int4 NULL,
	archival_date timestamp NULL,
	snapshot_id int8 NULL,
	index_name varchar(255) NULL
);

-- Permissions

ALTER TABLE public.siem_archived_data_request OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_archived_data_request TO siem_admin;


-- public.siem_async_actions definition

-- Drop table

-- DROP TABLE public.siem_async_actions;

CREATE TABLE public.siem_async_actions (
	action_id int8 DEFAULT nextval('siem_async_actions_id'::regclass) NOT NULL,
	feature_id int8 NOT NULL,
	feature_name varchar(32) NOT NULL,
	action_status varchar(32) NOT NULL,
	iteration int8 NOT NULL,
	expiration_time timestamp NULL,
	exception_message text NULL,
	request_payload text NULL,
	response_payload text NULL,
	additional_data text NULL,
	CONSTRAINT siem_async_actions_pkey PRIMARY KEY (action_id)
);

-- Permissions

ALTER TABLE public.siem_async_actions OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_async_actions TO siem_admin;


-- public.siem_audit_trail_user definition

-- Drop table

-- DROP TABLE public.siem_audit_trail_user;

CREATE TABLE public.siem_audit_trail_user (
	id bigserial NOT NULL,
	userid int8 NULL,
	user_name varchar(255) NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	object_type varchar(50) NULL,
	action_type varchar(50) NULL,
	old_data text NULL,
	new_data text NULL,
	updated_time timestamp DEFAULT now() NOT NULL,
	status varchar(255) NULL,
	object_id varchar NULL,
	CONSTRAINT siem_audit_trail_user_pkey PRIMARY KEY (id)
);
CREATE INDEX siem_audit_trail_user_objectid ON public.siem_audit_trail_user USING btree (object_id);
CREATE INDEX siem_audit_trail_user_objecttype ON public.siem_audit_trail_user USING btree (object_type);

-- Permissions

ALTER TABLE public.siem_audit_trail_user OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_audit_trail_user TO siem_admin;


-- public.siem_control_board_db_performance_details definition

-- Drop table

-- DROP TABLE public.siem_control_board_db_performance_details;

CREATE TABLE public.siem_control_board_db_performance_details (
	id serial4 NOT NULL,
	database_name varchar(100) NULL,
	active_connections int2 NULL,
	idle_connections int2 NULL,
	total_connections int2 NULL,
	wait_event_type_connections int2 NULL,
	transaction_backend_count int2 NULL,
	transaction_xact_commit int8 NULL,
	transaction_xact_rollback int8 NULL,
	transaction_deadlocks int2 NULL,
	total_temp_files int2 NULL,
	temp_usage_mb numeric NULL,
	cache_hit_ratio float4 NULL,
	tup_returned int8 NULL,
	tup_fetched int8 NULL,
	tup_inserted int8 NULL,
	tup_updated int8 NULL,
	tup_deleted int8 NULL,
	total_locks int2 NULL,
	checkpoints_timed int4 NULL,
	checkpoints_req int4 NULL,
	wal_archived_count int4 NULL,
	wal_failed_count int4 NULL,
	wal_last_archived text NULL,
	wal_archiver_stats_reset timestamp NULL,
	job_id varchar(100) NULL,
	record_entry_timestamp timestamp NULL,
	CONSTRAINT siem_control_board_db_performance_details_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_db_performance_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_db_performance_details TO siem_admin;


-- public.siem_control_board_db_schema_size definition

-- Drop table

-- DROP TABLE public.siem_control_board_db_schema_size;

CREATE TABLE public.siem_control_board_db_schema_size (
	id bigserial NOT NULL,
	schema_name varchar(100) NULL,
	total_tables int2 NULL,
	total_table_size_bytes int8 NULL,
	change_in_size float4 NULL,
	job_id varchar(100) NULL,
	record_entry_timestamp timestamp NULL,
	CONSTRAINT siem_control_board_db_schema_size_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_db_schema_size OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_db_schema_size TO siem_admin;


-- public.siem_control_board_db_tables_size definition

-- Drop table

-- DROP TABLE public.siem_control_board_db_tables_size;

CREATE TABLE public.siem_control_board_db_tables_size (
	id bigserial NOT NULL,
	table_name varchar(200) NULL,
	size_in_bytes int8 NULL,
	change_in_size float4 NULL,
	job_id varchar(100) NULL,
	record_entry_timestamp timestamp NULL,
	CONSTRAINT siem_control_board_db_tables_size_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_db_tables_size OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_db_tables_size TO siem_admin;


-- public.siem_control_board_hcmp_index definition

-- Drop table

-- DROP TABLE public.siem_control_board_hcmp_index;

CREATE TABLE public.siem_control_board_hcmp_index (
	id bigserial NOT NULL,
	"index" text NULL,
	creation_date timestamp NULL,
	health varchar(15) NULL,
	status varchar(15) NULL,
	"uuid" varchar(128) NULL,
	pri int2 NULL,
	rep int2 NULL,
	docs_count int8 NULL,
	docs_deleted int8 NULL,
	store_size int8 NULL,
	pri_store_size int8 NULL,
	count int8 NULL,
	shards_total int2 NULL,
	shards_successful int2 NULL,
	shards_skipped int2 NULL,
	shards_failed int2 NULL,
	logtype varchar(128) NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	job_id varchar(100) NULL,
	"timestamp" timestamp NULL,
	CONSTRAINT siem_control_board_hcmp_index_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_hcmp_index OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_hcmp_index TO siem_admin;


-- public.siem_control_board_hcmp_shard definition

-- Drop table

-- DROP TABLE public.siem_control_board_hcmp_shard;

CREATE TABLE public.siem_control_board_hcmp_shard (
	id bigserial NOT NULL,
	"index" text NULL,
	shard int8 NULL,
	prirep varchar(5) NULL,
	state varchar(25) NULL,
	docs int8 NULL,
	store int8 NULL,
	ip varchar(50) NULL,
	node varchar(50) NULL,
	logtype varchar(50) NULL,
	job_id varchar(100) NULL,
	"timestamp" timestamp NULL,
	CONSTRAINT siem_control_board_hcmp_shard_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_hcmp_shard OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_hcmp_shard TO siem_admin;


-- public.siem_control_board_internal_index definition

-- Drop table

-- DROP TABLE public.siem_control_board_internal_index;

CREATE TABLE public.siem_control_board_internal_index (
	id bigserial NOT NULL,
	"index" text NULL,
	creation_date timestamp NULL,
	health varchar(15) NULL,
	status varchar(15) NULL,
	"uuid" varchar(128) NULL,
	pri int2 NULL,
	rep int2 NULL,
	docs_count int8 NULL,
	docs_deleted int8 NULL,
	store_size int8 NULL,
	pri_store_size int8 NULL,
	count int8 NULL,
	shards_total int2 NULL,
	shards_successful int2 NULL,
	shards_skipped int2 NULL,
	shards_failed int2 NULL,
	job_id varchar(100) NULL,
	"timestamp" timestamp NULL,
	CONSTRAINT siem_control_board_internal_index_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_internal_index OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_internal_index TO siem_admin;


-- public.siem_control_board_internal_shard definition

-- Drop table

-- DROP TABLE public.siem_control_board_internal_shard;

CREATE TABLE public.siem_control_board_internal_shard (
	id bigserial NOT NULL,
	"index" text NULL,
	shard int8 NULL,
	prirep varchar(5) NULL,
	state varchar(25) NULL,
	docs int8 NULL,
	store int8 NULL,
	ip varchar(50) NULL,
	node varchar(50) NULL,
	job_id varchar(100) NULL,
	"timestamp" timestamp NULL,
	CONSTRAINT siem_control_board_internal_shard_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_internal_shard OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_internal_shard TO siem_admin;


-- public.siem_control_board_jobs definition

-- Drop table

-- DROP TABLE public.siem_control_board_jobs;

CREATE TABLE public.siem_control_board_jobs (
	id bigserial NOT NULL,
	job_id varchar(256) NULL,
	"timestamp" timestamp NULL,
	cron varchar(50) NULL,
	job_status varchar(15) NULL,
	job_description text NULL,
	CONSTRAINT siem_control_board_jobs_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_jobs OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_jobs TO siem_admin;


-- public.siem_control_board_kubernetes definition

-- Drop table

-- DROP TABLE public.siem_control_board_kubernetes;

CREATE TABLE public.siem_control_board_kubernetes (
	id bigserial NOT NULL,
	microservice_name text NULL,
	pod_name text NULL,
	creation_timestamp timestamp NULL,
	status varchar(50) NULL,
	restart_count int4 NULL,
	cpu_usage int4 NULL,
	memory_usage int8 NULL,
	node_name varchar(100) NULL,
	message text NULL,
	reason varchar(512) NULL,
	"type" varchar(150) NULL,
	"timestamp" timestamp NOT NULL,
	job_id varchar(50) NOT NULL,
	CONSTRAINT siem_control_board_kubernetes_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_kubernetes OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_kubernetes TO siem_admin;


-- public.siem_control_board_node_cluster_details definition

-- Drop table

-- DROP TABLE public.siem_control_board_node_cluster_details;

CREATE TABLE public.siem_control_board_node_cluster_details (
	id bigserial NOT NULL,
	cluster_name varchar(100) NULL,
	cluster_url varchar(50) NULL,
	total_nodes int2 NULL,
	successful_nodes int2 NULL,
	failed_nodes int2 NULL,
	node_number varchar(20) NULL,
	node_id varchar(100) NULL,
	status varchar(25) NULL,
	node_ip varchar(50) NULL,
	node_cpu_percent int2 NULL,
	cpu_load_1m float4 NULL,
	cpu_load_5m float4 NULL,
	cpu_load_15m float4 NULL,
	mem_total_in_bytes int8 NULL,
	mem_free_in_bytes int8 NULL,
	mem_used_in_bytes int8 NULL,
	mem_free_percent int2 NULL,
	mem_used_percent int2 NULL,
	jvm_heap_used_in_bytes int8 NULL,
	jvm_heap_used_percent int2 NULL,
	jvm_heap_committed_in_bytes int8 NULL,
	jvm_heap_max_in_bytes int8 NULL,
	jvm_non_heap_used_in_bytes int8 NULL,
	jvm_non_heap_committed_in_bytes int8 NULL,
	job_id varchar(100) NULL,
	"timestamp" timestamp NULL,
	available_processors int4 NULL,
	allocated_processors int4 NULL,
	total_memory_bytes float4 NULL,
	cluster_cpu_percentage int2 NULL,
	young_used_in_bytes int8 NULL,
	young_peak_used_in_bytes int8 NULL,
	old_used_in_bytes int8 NULL,
	old_peak_used_in_bytes int8 NULL,
	survivor_used_in_bytes int8 NULL,
	survivor_peak_used_in_bytes int8 NULL,
	young_collection_count int8 NULL,
	young_collection_time_millis int8 NULL,
	g1_concurrent_gc_collection_count int8 NULL,
	g1_concurrent_gc_collection_time_millis int8 NULL,
	old_collection_count int8 NULL,
	old_collection_time_millis int8 NULL,
	ycc_difference int4 NULL,
	yap_calculated numeric NULL,
	g1_cc_difference int4 NULL,
	g1_ap_calculated numeric NULL,
	occ_difference int4 NULL,
	oap_calculated numeric NULL,
	CONSTRAINT siem_control_board_node_cluster_details_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_node_cluster_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_node_cluster_details TO siem_admin;


-- public.siem_control_board_node_eps_details definition

-- Drop table

-- DROP TABLE public.siem_control_board_node_eps_details;

CREATE TABLE public.siem_control_board_node_eps_details (
	id serial4 NOT NULL,
	node_ip varchar NULL,
	node_id varchar NULL,
	node_name varchar NULL,
	node_role varchar NULL,
	live_docs int4 NULL,
	deleted_docs int4 NULL,
	total_docs int4 NULL,
	eps numeric NULL,
	size_in_mb numeric NULL,
	indexing_ops int4 NULL,
	indexing_time numeric NULL,
	indexing_throughput numeric NULL,
	total_queries int4 NULL,
	query_time numeric NULL,
	query_load numeric NULL,
	total_segment_merges int4 NULL,
	segment_merge_time numeric NULL,
	merge_load numeric NULL,
	field_data_in_mb numeric NULL,
	query_cache_hits int4 NULL,
	query_cache_misses int4 NULL,
	query_cache_evictions int4 NULL,
	job_id varchar(100) NULL,
	record_entry_timestamp timestamp NULL,
	CONSTRAINT siem_control_board_node_eps_details_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_control_board_node_eps_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_control_board_node_eps_details TO siem_admin;


-- public.siem_cust_asset_master definition

-- Drop table

-- DROP TABLE public.siem_cust_asset_master;

CREATE TABLE public.siem_cust_asset_master (
	id int8 DEFAULT nextval('sec_cust_asset_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NULL,
	asset_id varchar(200) NULL,
	project_id int8 NULL,
	project_name varchar(200) NULL,
	provider_id int8 NULL,
	provider_name varchar(200) NULL,
	subscription_id int8 NULL,
	subscription_name varchar(200) NULL,
	hierarchy_id int8 NULL,
	hierarchy_name varchar(200) NULL,
	hierarchy_type_id int8 NULL,
	hierarchy_type_name varchar(200) NULL,
	env_id int8 NULL,
	env_name varchar(200) NULL,
	agent_id varchar(200) NULL,
	agent_version varchar(200) NULL,
	hostname varchar(200) NULL,
	asset_name varchar(500) NULL,
	primary_ipaddress varchar(500) NULL,
	public_ipaddress varchar(500) NULL,
	resource_type_id int8 NULL,
	resource_type_name varchar(200) NULL,
	status varchar(500) NULL,
	is_deleted varchar(500) NULL,
	deleted_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	delete_macd_order varchar(500) NULL,
	enabled bpchar(1) NULL,
	created_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	updated_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	created_by varchar(100) NULL,
	updated_by varchar(100) NULL,
	created_by_id int8 NULL,
	updated_by_id int8 NULL,
	last_refresh_on timestamp(6) NULL,
	is_monitored varchar(3) NULL,
	monitoring_method varchar(100) NULL,
	hcmp_agent varchar(10) NULL,
	monitoring_type varchar(55) NULL,
	agent_status varchar(55) NULL,
	CONSTRAINT sec_cust_asset_master_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_scam_distinct_optimization ON public.siem_cust_asset_master USING btree (asset_id, is_monitored, is_deleted, subscription_id);
CREATE INDEX idx_scam_subscription_monitored_deleted ON public.siem_cust_asset_master USING btree (subscription_id, is_monitored, is_deleted);

-- Permissions

ALTER TABLE public.siem_cust_asset_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_asset_master TO siem_admin;


-- public.siem_cust_asset_onboard_master definition

-- Drop table

-- DROP TABLE public.siem_cust_asset_onboard_master;

CREATE TABLE public.siem_cust_asset_onboard_master (
	id serial4 NOT NULL,
	customer_id int8 NULL,
	asset_id varchar(500) NULL,
	asset_tech_id varchar(500) NULL,
	asset_tech_instance_id varchar(500) NULL,
	"module" varchar(500) NULL,
	sku_code varchar(500) NULL,
	onboard_start_date timestamp NULL,
	onboard_end_date timestamp NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(500) NULL,
	created_by_id int4 NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(500) NULL,
	updated_by_id int8 NULL,
	status varchar(500) NULL,
	enabled bool DEFAULT true NULL,
	technology_category_id int8 NULL,
	technology_id int8 NULL,
	technology_category_name varchar(200) NULL,
	technology_name varchar(200) NULL,
	CONSTRAINT siem_cust_asset_onboard_master_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_onboard_asset_tech_status ON public.siem_cust_asset_onboard_master USING btree (asset_id, technology_category_id, technology_id, status, updated_on DESC);

-- Permissions

ALTER TABLE public.siem_cust_asset_onboard_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_asset_onboard_master TO siem_admin;


-- public.siem_cust_asset_tech_details definition

-- Drop table

-- DROP TABLE public.siem_cust_asset_tech_details;

CREATE TABLE public.siem_cust_asset_tech_details (
	id serial4 NOT NULL,
	customer_id int8 NOT NULL,
	asset_id varchar(200) NULL,
	technology_category_id int8 NULL,
	technology_id int8 NULL,
	tech_asset_id varchar(200) NULL,
	technology_category_name varchar(200) NULL,
	technology_name varchar(200) NULL,
	technology_code varchar(200) NULL,
	hierarchy_id int8 NULL,
	hierarchy_name varchar(200) NULL,
	hierarchy_type_id int8 NULL,
	hierarchy_type_name varchar(200) NULL,
	env_id int8 NULL,
	env_name varchar(200) NULL,
	created_on timestamp(6) NULL,
	updated_on timestamp(6) NULL,
	created_by varchar(100) NULL,
	updated_by varchar(100) NULL,
	updated_by_id int8 NULL,
	created_by_id int8 NULL,
	last_refresh_on timestamp(6) NULL,
	status varchar(10) DEFAULT 'A'::character varying NULL,
	enabled bpchar(1) DEFAULT 'Y'::bpchar NULL,
	CONSTRAINT siem_cust_asset_tech_details_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_atd_asset_tech ON public.siem_cust_asset_tech_details USING btree (asset_id, technology_category_id, technology_id);

-- Permissions

ALTER TABLE public.siem_cust_asset_tech_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_asset_tech_details TO siem_admin;


-- public.siem_cust_asset_tech_instance definition

-- Drop table

-- DROP TABLE public.siem_cust_asset_tech_instance;

CREATE TABLE public.siem_cust_asset_tech_instance (
	id int4 DEFAULT nextval('siem_customer_asset_tech_instance_id_seq'::regclass) NOT NULL,
	customer_id int8 NOT NULL,
	asset_id varchar(200) NULL,
	technology_category_id int8 NULL,
	technology_id int8 NULL,
	tech_asset_id varchar(200) NULL,
	tech_instance_id varchar(200) NULL,
	instance_name varchar(200) NULL,
	instance_version varchar(200) NULL,
	instance_sudo_version varchar(50) NULL,
	status varchar(10) NULL,
	enabled bpchar(1) NULL,
	created_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	updated_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	created_by varchar(100) NULL,
	updated_by varchar(100) NULL,
	created_by_id int8 NULL,
	updated_by_id int8 NULL,
	last_refresh_on timestamp(6) NULL,
	CONSTRAINT siem_customer_asset_tech_instance_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_asset_tech_instance OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_asset_tech_instance TO siem_admin;


-- public.siem_cust_correlation_alert_trigger definition

-- Drop table

-- DROP TABLE public.siem_cust_correlation_alert_trigger;

CREATE TABLE public.siem_cust_correlation_alert_trigger (
	id bigserial NOT NULL,
	correlation_rule_id varchar(255) NULL,
	alert_trigger_name varchar(255) NULL,
	triggerwhennocorrelation bool NULL,
	alert_trigger_id varchar(255) NULL,
	notification_id varchar(255) NULL,
	notification_subject varchar(255) NULL,
	correlationrule_time_window int8 NULL,
	alerts_rxed_within_timewindow int8 NULL,
	total_alerts_rxed int4 NULL,
	created_by varchar(255) NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(255) NULL,
	updated_on timestamp NULL,
	additional_fields text NULL,
	isdeleted bool DEFAULT false NULL,
	description varchar(255) NULL,
	severity varchar(255) NULL,
	auto_incident bool DEFAULT false NULL
);

-- Permissions

ALTER TABLE public.siem_cust_correlation_alert_trigger OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_correlation_alert_trigger TO siem_admin;


-- public.siem_cust_correlation_datasources definition

-- Drop table

-- DROP TABLE public.siem_cust_correlation_datasources;

CREATE TABLE public.siem_cust_correlation_datasources (
	id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id _int8 NULL,
	correlation_rule_id int8 NULL,
	source_name varchar(500) NULL,
	log_type_id int8 NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	created_by varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamptz DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	ext_correlation_datasource_id_id varchar(65000) NULL,
	CONSTRAINT siem_cust_correlation_datasources_pkey PRIMARY KEY (id)
);
CREATE INDEX siem_cust_correlation_datasources_correlation_rule_id_idx ON public.siem_cust_correlation_datasources USING btree (correlation_rule_id);

-- Permissions

ALTER TABLE public.siem_cust_correlation_datasources OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_correlation_datasources TO siem_admin;


-- public.siem_cust_correlation_rules definition

-- Drop table

-- DROP TABLE public.siem_cust_correlation_rules;

CREATE TABLE public.siem_cust_correlation_rules (
	id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id _int8 NULL,
	rule_name varchar(500) NULL,
	created_on timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	ext_correlation_id varchar(500) NULL,
	payload_json text NULL,
	queries text NULL,
	description varchar(500) NULL,
	action_status varchar(50) NULL,
	CONSTRAINT siem_cust_correlation_rules_pkey PRIMARY KEY (id)
);
CREATE INDEX siem_cust_correlation_rules_project_id_idx ON public.siem_cust_correlation_rules USING btree (project_id);

-- Permissions

ALTER TABLE public.siem_cust_correlation_rules OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_correlation_rules TO siem_admin;


-- public.siem_cust_detector_rules definition

-- Drop table

-- DROP TABLE public.siem_cust_detector_rules;

CREATE TABLE public.siem_cust_detector_rules (
	id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	detector_id int8 NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	created_by varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	rule_id int8 NULL,
	CONSTRAINT siem_cust_detector_rules_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_detector_rules OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_detector_rules TO siem_admin;


-- public.siem_cust_detectors definition

-- Drop table

-- DROP TABLE public.siem_cust_detectors;

CREATE TABLE public.siem_cust_detectors (
	id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	detector_name varchar(500) NULL,
	detector_desc varchar(500) NULL,
	detector_source varchar(500) NULL,
	schedule_unit int8 NULL,
	schedule_uom varchar(500) NULL,
	ext_detector_id varchar(500) NULL,
	technology_category_id int8 NULL,
	technology_id varchar(500) NULL,
	hierarchy_data_id varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	log_type_id int8 NULL,
	detector_type varchar(500) NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	created_by varchar(500) NULL,
	payload_json text NULL,
	detector_uuid varchar(255) NULL,
	detector_type2 varchar(500) NULL,
	request_payload text NULL,
	action_status varchar(50) NULL,
	CONSTRAINT siem_cust_detectors_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_siem_cust_detectors_customer_project ON public.siem_cust_detectors USING btree (customer_id, project_id);

-- Permissions

ALTER TABLE public.siem_cust_detectors OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_detectors TO siem_admin;


-- public.siem_cust_ext_app_configs definition

-- Drop table

-- DROP TABLE public.siem_cust_ext_app_configs;

CREATE TABLE public.siem_cust_ext_app_configs (
	id bigserial NOT NULL,
	cust_ext_app_id int8 NULL,
	field_id int8 NULL,
	value text NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	CONSTRAINT siem_cust_ext_app_configs_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_ext_app_configs OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_ext_app_configs TO siem_admin;


-- public.siem_cust_ext_app_proj_sub_mapping definition

-- Drop table

-- DROP TABLE public.siem_cust_ext_app_proj_sub_mapping;

CREATE TABLE public.siem_cust_ext_app_proj_sub_mapping (
	id bigserial NOT NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	cust_ext_app_id int8 NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	project_name varchar(255) NULL,
	CONSTRAINT siem_cust_ext_app_proj_sub_mapping_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_ext_app_proj_sub_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_ext_app_proj_sub_mapping TO siem_admin;


-- public.siem_cust_ext_apps definition

-- Drop table

-- DROP TABLE public.siem_cust_ext_apps;

CREATE TABLE public.siem_cust_ext_apps (
	id bigserial NOT NULL,
	app_id int8 NULL,
	is_enabled bool NULL,
	is_connected bool NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	user_id int8 NULL,
	customer_id int8 NULL,
	CONSTRAINT siem_cust_ext_apps_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_ext_apps OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_ext_apps TO siem_admin;


-- public.siem_cust_metering_data definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_data;

CREATE TABLE public.siem_cust_metering_data (
	id int8 DEFAULT nextval('siem_metering_id'::regclass) NULL,
	tenant_id int8 NOT NULL,
	tenant_name varchar(500) NULL,
	subscription_id int8 NOT NULL,
	asset_id varchar(500) NULL,
	index_name varchar(200) NULL,
	usage_start_date timestamp NULL,
	usage_end_date timestamp NULL,
	product_id varchar(500) NULL,
	sku_id varchar(500) NULL,
	meter_id varchar(500) NULL,
	quantity int8 NULL,
	uom varchar(100) NULL,
	resource_id varchar(100) NULL,
	additional_fields text NULL,
	processing_status varchar(1) NULL,
	processed_date timestamp NULL,
	created_on timestamp NULL,
	created_by_id varchar(100) NULL,
	created_by varchar(500) NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(100) NULL,
	vendor_id varchar(500) NULL
);

-- Permissions

ALTER TABLE public.siem_cust_metering_data OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_data TO siem_admin;


-- public.siem_cust_metering_event_count definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_event_count;

CREATE TABLE public.siem_cust_metering_event_count (
	id int8 DEFAULT nextval('seq_siem_cust_metering_event_count'::regclass) NOT NULL,
	asset_id varchar(200) NOT NULL,
	project_id varchar(200) NOT NULL,
	subscription_id varchar(200) NOT NULL,
	event_timestamp timestamp NOT NULL,
	event_count int4 NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	customer_id varchar(200) NULL,
	log_type varchar(255) NULL,
	log_volume_bytes int8 NULL,
	CONSTRAINT siem_cust_metering_event_count_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_metering_event ON public.siem_cust_metering_event_count USING btree (event_timestamp, asset_id, project_id, subscription_id, customer_id);

-- Permissions

ALTER TABLE public.siem_cust_metering_event_count OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_event_count TO siem_admin;


-- public.siem_cust_metering_event_count_agg_daily definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_event_count_agg_daily;

CREATE TABLE public.siem_cust_metering_event_count_agg_daily (
	id int8 DEFAULT nextval('seq_siem_cust_metering_event_count_agg_daily'::regclass) NOT NULL,
	project_id varchar(200) NOT NULL,
	asset_id varchar(200) NOT NULL,
	subscription_id varchar(200) NOT NULL,
	event_timestamp timestamp NOT NULL,
	event_count int4 NOT NULL,
	customer_id varchar(200) NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT siem_cust_metering_event_count_agg_daily_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_metering_event_count_agg_daily OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_event_count_agg_daily TO siem_admin;


-- public.siem_cust_metering_event_count_agg_hour definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_event_count_agg_hour;

CREATE TABLE public.siem_cust_metering_event_count_agg_hour (
	id int8 DEFAULT nextval('seq_siem_cust_metering_event_count_agg_hour'::regclass) NOT NULL,
	project_id varchar(200) NOT NULL,
	asset_id varchar(200) NOT NULL,
	subscription_id varchar(200) NOT NULL,
	event_timestamp timestamp NOT NULL,
	event_count int4 NOT NULL,
	customer_id varchar(200) NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	total_event_count int8 NULL,
	log_type varchar(255) NULL,
	log_volume_gb numeric(10, 2) NULL,
	CONSTRAINT siem_cust_metering_event_count_agg_hour_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_metering_event_count_agg_hour OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_event_count_agg_hour TO siem_admin;


-- public.siem_cust_metering_log_volume definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_log_volume;

CREATE TABLE public.siem_cust_metering_log_volume (
	id int8 DEFAULT nextval('seq_siem_cust_metering_log_volume'::regclass) NOT NULL,
	asset_id varchar(255) NOT NULL,
	project_id varchar(255) NOT NULL,
	subscription_id varchar(255) NOT NULL,
	customer_id varchar(255) NOT NULL,
	log_volume_bytes int8 NOT NULL,
	event_timestamp timestamp NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT siem_cust_metering_log_volume_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_metering_log_volume OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_log_volume TO siem_admin;


-- public.siem_cust_metering_log_volume_agg_hour definition

-- Drop table

-- DROP TABLE public.siem_cust_metering_log_volume_agg_hour;

CREATE TABLE public.siem_cust_metering_log_volume_agg_hour (
	id int8 DEFAULT nextval('seq_siem_cust_metering_log_volume_agg_hour'::regclass) NOT NULL,
	asset_id varchar(255) NOT NULL,
	project_id varchar(255) NOT NULL,
	subscription_id varchar(255) NOT NULL,
	customer_id varchar(255) NOT NULL,
	log_volume_bytes int8 NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	log_volume_gb numeric(12, 2) NULL,
	CONSTRAINT siem_cust_metering_log_volume_agg_hour_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_metering_log_volume_agg_hour OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_metering_log_volume_agg_hour TO siem_admin;


-- public.siem_cust_notifications definition

-- Drop table

-- DROP TABLE public.siem_cust_notifications;

CREATE TABLE public.siem_cust_notifications (
	id serial4 NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	send_email_notification bool NULL,
	send_sms_notification bool NULL,
	event_type varchar(255) NULL,
	event_subtype_email varchar(255) NULL,
	event_subtype_sms varchar(255) NULL,
	email_receipents text NULL,
	sms_receipents text NULL,
	email_template varchar(255) NULL,
	sms_template varchar(255) NULL,
	email_content text NULL,
	sms_content text NULL,
	group_id text NULL,
	group_name text NULL,
	CONSTRAINT siem_cust_notifications_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_cust_notifications OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_notifications TO siem_admin;


-- public.siem_cust_subscriptions definition

-- Drop table

-- DROP TABLE public.siem_cust_subscriptions;

CREATE TABLE public.siem_cust_subscriptions (
	id bigserial NOT NULL,
	customer_id int8 NULL,
	provider_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	subscription_name varchar(500) NULL,
	project_name varchar(500) NULL,
	provider_name varchar(500) NULL,
	onboard_date timestamp NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(500) NULL,
	created_by_id int8 NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(500) NULL,
	updated_by_id int8 NULL,
	status varchar(500) NULL,
	enabled bool DEFAULT true NULL,
	module_initialized bool DEFAULT false NULL,
	resource_id int8 NULL,
	ext_resource_id varchar(255) NULL,
	cxp_order_number varchar(500) NULL,
	product_sku_id varchar(255) NULL,
	vendor_id int8 NULL,
	vendor_name varchar(500) NULL,
	billing_vendor_id varchar(255) NULL,
	CONSTRAINT siem_cust_subscriptions_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_sub_subscription_status ON public.siem_cust_subscriptions USING btree (subscription_id, status, updated_on DESC);
CREATE INDEX siem_cust_testing_subscription ON public.siem_cust_subscriptions USING btree (customer_id, module_initialized);

-- Permissions

ALTER TABLE public.siem_cust_subscriptions OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_cust_subscriptions TO siem_admin;


-- public.siem_data_archival_subscr_settings definition

-- Drop table

-- DROP TABLE public.siem_data_archival_subscr_settings;

CREATE TABLE public.siem_data_archival_subscr_settings (
	id bigserial NOT NULL,
	cust_id int8 NULL,
	proj_id int8 NOT NULL,
	sub_id int8 NULL,
	to_archive bool NULL,
	duration int8 NULL,
	type_of_archival varchar(50) NULL,
	repository_id varchar(50) NULL,
	last_archival timestamp NULL,
	event_timestamp timestamp NULL,
	archival_volume varchar(50) NULL,
	retention_period int8 NULL,
	archival_period int8 NULL,
	archival_start_date timestamp NULL,
	archival_end_date timestamp NULL,
	created_by varchar(50) NULL,
	archival_job_start_date timestamp NULL,
	created_on timestamp DEFAULT now() NULL,
	repo_name varchar(255) NULL
);

-- Permissions

ALTER TABLE public.siem_data_archival_subscr_settings OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_data_archival_subscr_settings TO siem_admin;


-- public.siem_detection_rules_master definition

-- Drop table

-- DROP TABLE public.siem_detection_rules_master;

CREATE TABLE public.siem_detection_rules_master (
	id int8 DEFAULT nextval('siem_log_types_master_id_seq'::regclass) NOT NULL,
	log_type_id int8 NULL,
	rule_name varchar(500) NULL,
	severity varchar(500) NULL,
	description text NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	created_by varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	ext_detector_rule_id varchar(500) NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	"source" varchar(100) NULL,
	category varchar(500) NULL,
	log_source varchar(500) NULL,
	payload text NULL,
	"rule" text NULL,
	rule_id int8 DEFAULT 1003 NOT NULL,
	siem_enabled bool DEFAULT false NOT NULL,
	action_status varchar(100) NULL,
	is_deleted bool DEFAULT false NOT NULL,
	CONSTRAINT siem_detection_rules_master_ext_detector_rule_id_key UNIQUE (ext_detector_rule_id),
	CONSTRAINT siem_detection_rules_master_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_rules_project_category ON public.siem_detection_rules_master USING btree (project_id, category) WHERE ((siem_enabled = true) AND (is_deleted = false));
CREATE INDEX idx_rules_source_category_enabled ON public.siem_detection_rules_master USING btree (source, category, enabled) WHERE ((siem_enabled = true) AND (is_deleted = false));
CREATE INDEX idx_rules_source_enabled ON public.siem_detection_rules_master USING btree (source, enabled) WHERE ((siem_enabled = true) AND (is_deleted = false));
CREATE INDEX idx_rules_updated_created ON public.siem_detection_rules_master USING btree (COALESCE(updated_on, created_on));

-- Permissions

ALTER TABLE public.siem_detection_rules_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_detection_rules_master TO siem_admin;


-- public.siem_detector_proj_sub_mapping definition

-- Drop table

-- DROP TABLE public.siem_detector_proj_sub_mapping;

CREATE TABLE public.siem_detector_proj_sub_mapping (
	id serial4 NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	log_type_id int8 NULL,
	created_on timestamp NULL,
	created_by varchar(255) NULL,
	created_by_id varchar(255) NULL,
	updated_on timestamp NULL,
	updated_by_id varchar(255) NULL,
	updated_by varchar(255) NULL,
	detector_id int8 NULL,
	CONSTRAINT siem_detector_proj_sub_mapping_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_detector_proj_sub_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_detector_proj_sub_mapping TO siem_admin;


-- public.siem_ext_app_fields definition

-- Drop table

-- DROP TABLE public.siem_ext_app_fields;

CREATE TABLE public.siem_ext_app_fields (
	id bigserial NOT NULL,
	field_name varchar(255) NULL,
	value varchar(255) NULL,
	app_id int8 NULL,
	is_required bool NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	"type" varchar DEFAULT 'Text_Field'::character varying NULL,
	CONSTRAINT siem_ext_app_fields_pkey PRIMARY KEY (id),
	CONSTRAINT type_constraint CHECK (((type)::text = ANY (ARRAY[('Text_Field'::character varying)::text, ('Dropdown'::character varying)::text])))
);

-- Permissions

ALTER TABLE public.siem_ext_app_fields OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_ext_app_fields TO siem_admin;


-- public.siem_ext_app_types definition

-- Drop table

-- DROP TABLE public.siem_ext_app_types;

CREATE TABLE public.siem_ext_app_types (
	id bigserial NOT NULL,
	"name" varchar(255) NULL,
	is_enabled bool NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	is_deleted bool DEFAULT false NULL,
	CONSTRAINT siem_ext_app_types_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_ext_app_types OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_ext_app_types TO siem_admin;


-- public.siem_ext_apps definition

-- Drop table

-- DROP TABLE public.siem_ext_apps;

CREATE TABLE public.siem_ext_apps (
	id bigserial NOT NULL,
	"name" varchar(255) NULL,
	app_type_id int8 NULL,
	document_url varchar(255) NULL,
	is_enabled bool NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	is_deleted bool DEFAULT false NULL,
	connection_type varchar(50) DEFAULT 'Import to SIEM'::character varying NULL,
	CONSTRAINT siem_ext_apps_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_ext_apps OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_ext_apps TO siem_admin;


-- public.siem_ext_logrhythm_alarms definition

-- Drop table

-- DROP TABLE public.siem_ext_logrhythm_alarms;

CREATE TABLE public.siem_ext_logrhythm_alarms (
	id bigserial NOT NULL,
	tenant_id int8 NULL,
	tenant_name varchar(255) NULL,
	subscription_id int8 NULL,
	alarm_rule_id varchar(255) NULL,
	alarm_rule_name varchar(255) NULL,
	alarm_status int8 NULL,
	alarm_status_name varchar(255) NULL,
	alarm_date timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	alarm_message varchar(255) NULL,
	event_date_first timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	event_date_last timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	alarm_log_resource_id varchar(255) NULL,
	index_name varchar(255) NULL,
	alarm_response varchar(1) NULL,
	created_on timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(255) NULL,
	updated_on timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(255) NULL,
	updated_by_id varchar(255) NULL,
	priority int8 NULL,
	alarm_source int8 NULL,
	alarm_id int8 NULL,
	created_by_id int8 NULL,
	additional_fields text NULL,
	project_id int8 NULL,
	customer_id int8 NULL,
	CONSTRAINT siem_ext_logrhythm_alarms_pkey PRIMARY KEY (id),
	CONSTRAINT unique_alarm_source_alarm_id UNIQUE (alarm_source, alarm_id)
);

-- Permissions

ALTER TABLE public.siem_ext_logrhythm_alarms OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_ext_logrhythm_alarms TO siem_admin;


-- public.siem_extract_field definition

-- Drop table

-- DROP TABLE public.siem_extract_field;

CREATE TABLE public.siem_extract_field (
	id bigserial NOT NULL,
	log_type_id int8 NULL,
	display_name varchar(512) NULL,
	field_name varchar(512) NULL,
	"datatype" varchar(512) NULL,
	"hierarchy" _varchar NULL,
	status bool NULL,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(512) NULL,
	created_by varchar(512) NULL,
	regex varchar(500) NULL,
	iterative bool NULL,
	CONSTRAINT siem_extract_field_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_extract_field OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_extract_field TO siem_admin;


-- public.siem_feature_details definition

-- Drop table

-- DROP TABLE public.siem_feature_details;

CREATE TABLE public.siem_feature_details (
	id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	customer_name varchar(255) NOT NULL,
	feature_name varchar(255) NOT NULL,
	feature_id int4 NOT NULL,
	status varchar(10) DEFAULT 'Active'::character varying NULL,
	enabled bool DEFAULT true NULL,
	created_on timestamp(6) DEFAULT CURRENT_TIMESTAMP NULL,
	updated_on timestamp(6) DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(100) NULL,
	updated_by varchar(100) NULL,
	created_by_id int8 NULL,
	updated_by_id int8 NULL,
	CONSTRAINT siem_feature_details_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_feature_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_feature_details TO siem_admin;


-- public.siem_finding_rules_636 definition

-- Drop table

-- DROP TABLE public.siem_finding_rules_636;

CREATE TABLE public.siem_finding_rules_636 (
	id bigserial NOT NULL,
	finding_id varchar(255) NOT NULL,
	rule_id int8 NULL,
	rule_name varchar(255) NULL,
	rule_severity varchar(255) NULL,
	rule_logtype varchar(255) NULL,
	rule_description varchar(255) NULL,
	CONSTRAINT siem_finding_rules_636_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_finding_rules_636 OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_finding_rules_636 TO siem_admin;


-- public.siem_findings_636 definition

-- Drop table

-- DROP TABLE public.siem_findings_636;

CREATE TABLE public.siem_findings_636 (
	id bigserial NOT NULL,
	finding_id varchar(255) NOT NULL,
	logtype varchar(255) NULL,
	detector_id int8 NULL,
	ext_detector_id varchar(255) NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	customer_id int8 NULL,
	project_name varchar(255) NULL,
	subscription_name varchar(255) NULL,
	technology_category_name varchar(255) NULL,
	technology_name varchar(255) NULL,
	"hierarchy" varchar(255) NULL,
	private_ip varchar(255) NULL,
	public_ip varchar(255) NULL,
	host varchar(255) NULL,
	"index" varchar(255) NULL,
	document_id varchar(255) NULL,
	created_on timestamp NULL,
	document_data text NULL,
	queries text NULL,
	detector_name varchar(255) NULL,
	logtype_display_name varchar(255) NULL,
	assetid varchar(255) NULL,
	CONSTRAINT siem_findings_636_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_findings_636 OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_findings_636 TO siem_admin;


-- public.siem_flags_config definition

-- Drop table

-- DROP TABLE public.siem_flags_config;

CREATE TABLE public.siem_flags_config (
	id serial4 NOT NULL,
	flag_name varchar(50) NOT NULL,
	status bool DEFAULT false NULL,
	CONSTRAINT siem_flags_config_flag_name_key UNIQUE (flag_name),
	CONSTRAINT siem_flags_config_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_flags_config OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_flags_config TO siem_admin;


-- public.siem_group_master definition

-- Drop table

-- DROP TABLE public.siem_group_master;

CREATE TABLE public.siem_group_master (
	id bigserial NOT NULL,
	group_id int8 NOT NULL,
	group_name varchar(100) NOT NULL,
	description varchar(100) NULL,
	group_code varchar(40) NULL,
	profile_code varchar(40) NULL,
	CONSTRAINT siem_group_master_group_code_check CHECK ((char_length((group_code)::text) <= 40)),
	CONSTRAINT siem_group_master_group_code_check1 CHECK ((char_length((group_code)::text) <= 40)),
	CONSTRAINT siem_group_master_group_code_check2 CHECK ((char_length((group_code)::text) <= 40)),
	CONSTRAINT siem_group_master_group_id_check CHECK ((group_id > 0)),
	CONSTRAINT siem_group_master_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_group_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_group_master TO siem_admin;


-- public.siem_hcmp_process_conf_schema_history definition

-- Drop table

-- DROP TABLE public.siem_hcmp_process_conf_schema_history;

CREATE TABLE public.siem_hcmp_process_conf_schema_history (
	installed_rank int4 NOT NULL,
	"version" varchar(50) NULL,
	description varchar(200) NOT NULL,
	"type" varchar(20) NOT NULL,
	script varchar(1000) NOT NULL,
	checksum int4 NULL,
	installed_by varchar(100) NOT NULL,
	installed_on timestamp DEFAULT now() NOT NULL,
	execution_time int4 NOT NULL,
	success bool NOT NULL,
	CONSTRAINT siem_hcmp_process_conf_schema_history_pk PRIMARY KEY (installed_rank)
);
CREATE INDEX siem_hcmp_process_conf_schema_history_s_idx ON public.siem_hcmp_process_conf_schema_history USING btree (success);

-- Permissions

ALTER TABLE public.siem_hcmp_process_conf_schema_history OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_hcmp_process_conf_schema_history TO siem_admin;


-- public.siem_hcmp_process_conf_test_10042024 definition

-- Drop table

-- DROP TABLE public.siem_hcmp_process_conf_test_10042024;

CREATE TABLE public.siem_hcmp_process_conf_test_10042024 (
	id serial4 NOT NULL,
	"name" varchar(100) NULL,
	"type" varchar(40) NULL,
	isactive bpchar(1) DEFAULT 'Y'::bpchar NULL,
	createdon timestamp DEFAULT now() NULL,
	createdby int4 DEFAULT 1 NULL
);

-- Permissions

ALTER TABLE public.siem_hcmp_process_conf_test_10042024 OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_hcmp_process_conf_test_10042024 TO siem_admin;


-- public.siem_hotfix_nic_hcmp_process_conf_schema_history definition

-- Drop table

-- DROP TABLE public.siem_hotfix_nic_hcmp_process_conf_schema_history;

CREATE TABLE public.siem_hotfix_nic_hcmp_process_conf_schema_history (
	installed_rank int4 NOT NULL,
	"version" varchar(50) NULL,
	description varchar(200) NOT NULL,
	"type" varchar(20) NOT NULL,
	script varchar(1000) NOT NULL,
	checksum int4 NULL,
	installed_by varchar(100) NOT NULL,
	installed_on timestamp DEFAULT now() NOT NULL,
	execution_time int4 NOT NULL,
	success bool NOT NULL,
	CONSTRAINT siem_hotfix_nic_hcmp_process_conf_schema_history_pk PRIMARY KEY (installed_rank)
);
CREATE INDEX siem_hotfix_nic_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_nic_hcmp_process_conf_schema_history USING btree (success);

-- Permissions

ALTER TABLE public.siem_hotfix_nic_hcmp_process_conf_schema_history OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_hotfix_nic_hcmp_process_conf_schema_history TO siem_admin;


-- public.siem_hotfix_prod_hcmp_process_conf_schema_history definition

-- Drop table

-- DROP TABLE public.siem_hotfix_prod_hcmp_process_conf_schema_history;

CREATE TABLE public.siem_hotfix_prod_hcmp_process_conf_schema_history (
	installed_rank int4 NOT NULL,
	"version" varchar(50) NULL,
	description varchar(200) NOT NULL,
	"type" varchar(20) NOT NULL,
	script varchar(1000) NOT NULL,
	checksum int4 NULL,
	installed_by varchar(100) NOT NULL,
	installed_on timestamp DEFAULT now() NOT NULL,
	execution_time int4 NOT NULL,
	success bool NOT NULL,
	CONSTRAINT siem_hotfix_prod_hcmp_process_conf_schema_history_pk PRIMARY KEY (installed_rank)
);
CREATE INDEX siem_hotfix_prod_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_prod_hcmp_process_conf_schema_history USING btree (success);

-- Permissions

ALTER TABLE public.siem_hotfix_prod_hcmp_process_conf_schema_history OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_hotfix_prod_hcmp_process_conf_schema_history TO siem_admin;


-- public.siem_hotfix_sandbox_hcmp_process_conf_schema_history definition

-- Drop table

-- DROP TABLE public.siem_hotfix_sandbox_hcmp_process_conf_schema_history;

CREATE TABLE public.siem_hotfix_sandbox_hcmp_process_conf_schema_history (
	installed_rank int4 NOT NULL,
	"version" varchar(50) NULL,
	description varchar(200) NOT NULL,
	"type" varchar(20) NOT NULL,
	script varchar(1000) NOT NULL,
	checksum int4 NULL,
	installed_by varchar(100) NOT NULL,
	installed_on timestamp DEFAULT now() NOT NULL,
	execution_time int4 NOT NULL,
	success bool NOT NULL,
	CONSTRAINT siem_hotfix_sandbox_hcmp_process_conf_schema_history_pk PRIMARY KEY (installed_rank)
);
CREATE INDEX siem_hotfix_sandbox_hcmp_process_conf_schema_history_s_idx ON public.siem_hotfix_sandbox_hcmp_process_conf_schema_history USING btree (success);

-- Permissions

ALTER TABLE public.siem_hotfix_sandbox_hcmp_process_conf_schema_history OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_hotfix_sandbox_hcmp_process_conf_schema_history TO siem_admin;


-- public.siem_incident_master definition

-- Drop table

-- DROP TABLE public.siem_incident_master;

CREATE TABLE public.siem_incident_master (
	id bigserial NOT NULL,
	alert_id varchar(255) NOT NULL,
	customer_id int8 NOT NULL,
	insert_by_id varchar(255) NULL,
	insert_on timestamp(6) NULL,
	link_record_id varchar(255) NULL,
	recordid varchar(255) NOT NULL,
	recorttype varchar(255) NOT NULL,
	updated_on timestamp NULL,
	updated_by varchar(255) NULL,
	project_id int8 NULL,
	CONSTRAINT siem_incident_master_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_t2r_alert_id ON public.siem_incident_master USING btree (alert_id);

-- Table Triggers

create trigger trigger_update_summary_from_incident after
insert
    or
delete
    or
update
    on
    public.siem_incident_master for each row execute function update_siem_alerts_summary_from_incident();

-- Permissions

ALTER TABLE public.siem_incident_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_incident_master TO siem_admin;


-- public.siem_log_field_mapping definition

-- Drop table

-- DROP TABLE public.siem_log_field_mapping;

CREATE TABLE public.siem_log_field_mapping (
	log_type varchar(255) NOT NULL,
	log_field varchar(255) NOT NULL,
	ecs_field varchar(255) NULL,
	CONSTRAINT siem_log_field_mapping_pkey PRIMARY KEY (log_type, log_field)
);

-- Permissions

ALTER TABLE public.siem_log_field_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_field_mapping TO siem_admin;


-- public.siem_log_template definition

-- Drop table

-- DROP TABLE public.siem_log_template;

CREATE TABLE public.siem_log_template (
	log_type varchar(255) NOT NULL,
	log_field varchar(255) NOT NULL,
	data_type varchar(255) NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	deleted_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	display_name varchar(255) NULL,
	monitor_for_ioc varchar(100) DEFAULT 'NA'::character varying NULL,
	CONSTRAINT siem_log_template_pkey PRIMARY KEY (log_type, log_field)
);
CREATE INDEX idx_siem_log_template_log_type ON public.siem_log_template USING btree (log_type);

-- Permissions

ALTER TABLE public.siem_log_template OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_template TO siem_admin;


-- public.siem_log_type_backup definition

-- Drop table

-- DROP TABLE public.siem_log_type_backup;

CREATE TABLE public.siem_log_type_backup (
	id int8 NULL,
	display_name varchar(255) NULL,
	log_type varchar(255) NULL,
	description varchar(255) NULL,
	"source" varchar(255) NULL,
	category varchar(255) NULL,
	is_enabled bool NULL,
	template_created bool NULL,
	fields_mapped bool NULL,
	created_at timestamptz NULL,
	updated_at timestamptz NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	ext_id varchar(255) NULL,
	is_deleted bool NULL
);

-- Permissions

ALTER TABLE public.siem_log_type_backup OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_type_backup TO siem_admin;


-- public.siem_log_type_categories_master definition

-- Drop table

-- DROP TABLE public.siem_log_type_categories_master;

CREATE TABLE public.siem_log_type_categories_master (
	id int8 NULL,
	category varchar(255) NULL
);

-- Permissions

ALTER TABLE public.siem_log_type_categories_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_type_categories_master TO siem_admin;


-- public.siem_log_type_ecs_fields_master definition

-- Drop table

-- DROP TABLE public.siem_log_type_ecs_fields_master;

CREATE TABLE public.siem_log_type_ecs_fields_master (
	log_type varchar(255) NOT NULL,
	ecs_field varchar(255) NOT NULL,
	raw_field varchar(255) NULL,
	CONSTRAINT siem_log_type_ecs_fields_master_pkey PRIMARY KEY (log_type, ecs_field)
);

-- Permissions

ALTER TABLE public.siem_log_type_ecs_fields_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_type_ecs_fields_master TO siem_admin;


-- public.siem_log_type_technology_mapping definition

-- Drop table

-- DROP TABLE public.siem_log_type_technology_mapping;

CREATE TABLE public.siem_log_type_technology_mapping (
	id serial4 NOT NULL,
	technology_category_name varchar(255) NULL,
	technology_category_id int8 NULL,
	technology_id int8 NULL,
	technology_name varchar(255) NULL,
	log_type_id int8 NULL,
	log_type varchar(255) NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	monitoring_type varchar NULL,
	description varchar(1000) NULL,
	status varchar(10) DEFAULT 'Active'::character varying NULL,
	enabled bool DEFAULT true NULL,
	created_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	created_by varchar(100) NULL,
	CONSTRAINT siem_log_type_technology_mapping_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_sltm_tech_log_mapping ON public.siem_log_type_technology_mapping USING btree (technology_category_id, technology_id);

-- Permissions

ALTER TABLE public.siem_log_type_technology_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_type_technology_mapping TO siem_admin;


-- public.siem_log_types definition

-- Drop table

-- DROP TABLE public.siem_log_types;

CREATE TABLE public.siem_log_types (
	id bigserial NOT NULL,
	display_name varchar(255) NULL,
	log_type varchar(255) NULL,
	description varchar(255) NULL,
	"source" varchar(255) NULL,
	category varchar(255) NULL,
	is_enabled bool NULL,
	template_created bool NULL,
	fields_mapped bool NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	created_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	ext_id varchar(255) NULL,
	is_deleted bool DEFAULT false NULL,
	CONSTRAINT chk_source CHECK (((source)::text = ANY (ARRAY['STANDARD'::text, 'CUSTOM'::text]))),
	CONSTRAINT siem_log_types_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_siem_log_types_id ON public.siem_log_types USING btree (id);
CREATE INDEX idx_siem_log_types_log_type ON public.siem_log_types USING btree (log_type);
CREATE INDEX idx_slt_enabled ON public.siem_log_types USING btree (id, is_enabled);

-- Permissions

ALTER TABLE public.siem_log_types OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_types TO siem_admin;


-- public.siem_log_types_master definition

-- Drop table

-- DROP TABLE public.siem_log_types_master;

CREATE TABLE public.siem_log_types_master (
	id bigserial NOT NULL,
	log_type_source varchar(500) NULL,
	logtype_name varchar(500) NULL,
	log_type_desc varchar(500) NULL,
	category varchar(500) NULL,
	technology_category_id int8 NULL,
	technology_id int8 NULL,
	"source" varchar(500) NULL,
	hierarchy_data_id int8 NULL,
	created_on time DEFAULT CURRENT_TIMESTAMP NOT NULL,
	created_by varchar(500) NULL,
	created_by_id varchar(500) NULL,
	updated_on timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	ext_log_type_id varchar(500) NULL,
	CONSTRAINT siem_log_types_master_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_log_types_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_log_types_master TO siem_admin;


-- public.siem_logrhythm_test_alarms definition

-- Drop table

-- DROP TABLE public.siem_logrhythm_test_alarms;

CREATE TABLE public.siem_logrhythm_test_alarms (
	id int8 NOT NULL,
	ip_address varchar NOT NULL,
	bearer_token text NOT NULL,
	response text NULL,
	CONSTRAINT siem_logrhythm_test_alams_pkey PRIMARY KEY (id, ip_address, bearer_token)
);

-- Permissions

ALTER TABLE public.siem_logrhythm_test_alarms OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_logrhythm_test_alarms TO siem_admin;


-- public.siem_logrhythm_test_details definition

-- Drop table

-- DROP TABLE public.siem_logrhythm_test_details;

CREATE TABLE public.siem_logrhythm_test_details (
	id int8 NOT NULL,
	ip_address varchar NOT NULL,
	bearer_token text NOT NULL,
	response text NULL,
	CONSTRAINT siem_logrhythm_test_details_pkey PRIMARY KEY (id, ip_address, bearer_token)
);

-- Permissions

ALTER TABLE public.siem_logrhythm_test_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_logrhythm_test_details TO siem_admin;


-- public.siem_logrhythm_test_events definition

-- Drop table

-- DROP TABLE public.siem_logrhythm_test_events;

CREATE TABLE public.siem_logrhythm_test_events (
	id int8 NOT NULL,
	ip_address varchar NOT NULL,
	bearer_token text NOT NULL,
	response text NULL,
	CONSTRAINT siem_logrhythm_test_events_pkey PRIMARY KEY (id, ip_address, bearer_token)
);

-- Permissions

ALTER TABLE public.siem_logrhythm_test_events OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_logrhythm_test_events TO siem_admin;


-- public.siem_logtype_datasource_map definition

-- Drop table

-- DROP TABLE public.siem_logtype_datasource_map;

CREATE TABLE public.siem_logtype_datasource_map (
	id bigserial NOT NULL,
	log_type_master_id int8 NULL,
	log_data_source varchar NULL,
	created_on date NULL,
	created_by varchar(200) NULL,
	created_by_id varchar(200) NULL,
	updated_on date NULL,
	updated_by varchar(200) NULL,
	updated_by_id varchar(200) NULL,
	status varchar(10) NULL,
	enabled varchar(10) NULL,
	CONSTRAINT siem_logtype_datasource_map_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_logtype_datasource_map OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_logtype_datasource_map TO siem_admin;


-- public.siem_logtype_rule_field_mapping definition

-- Drop table

-- DROP TABLE public.siem_logtype_rule_field_mapping;

CREATE TABLE public.siem_logtype_rule_field_mapping (
	id int8 DEFAULT nextval('siem_field_mapping_seq'::regclass) NOT NULL,
	log_type_master_id int8 NULL,
	detection_rule_field_name varchar NULL,
	log_field_name varchar NULL,
	created_on timestamp(6) NULL,
	created_by varchar(200) NULL,
	created_by_id varchar(200) NULL,
	updated_on timestamp(6) NULL,
	updated_by varchar(200) NULL,
	updated_by_id varchar(200) NULL,
	status varchar(10) NULL,
	enabled varchar(10) NULL,
	CONSTRAINT siem_logtype_rule_field_mapping_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_logtype_rule_field_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_logtype_rule_field_mapping TO siem_admin;


-- public.siem_metering_archive definition

-- Drop table

-- DROP TABLE public.siem_metering_archive;

CREATE TABLE public.siem_metering_archive (
	id int8 DEFAULT nextval('siem_metering_archive_primary_id'::regclass) NULL,
	tenant_id int8 NOT NULL,
	tenant_name varchar(500) NULL,
	project_id int8 NOT NULL,
	subscription_id int8 NOT NULL,
	index_name varchar(200) NULL,
	vendor_id varchar(500) NULL,
	asset_id varchar(500) NULL,
	billing_start_date timestamp NULL,
	billing_end_date timestamp NULL,
	billing_for_month timestamp NULL,
	resource_id varchar(100) NULL,
	additional_fields jsonb NULL,
	processing_status varchar(1) NULL,
	processed_date timestamp NULL,
	created_on timestamp NULL,
	created_by_id varchar(100) NULL,
	created_by varchar(500) NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(100) NULL,
	total_eps numeric(3) DEFAULT 0.000 NULL
);

-- Permissions

ALTER TABLE public.siem_metering_archive OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_metering_archive TO siem_admin;


-- public.siem_metering_data definition

-- Drop table

-- DROP TABLE public.siem_metering_data;

CREATE TABLE public.siem_metering_data (
	id int8 DEFAULT nextval('siem_metering_primary_id'::regclass) NULL,
	tenant_id int8 NOT NULL,
	tenant_name varchar(500) NULL,
	project_id int8 NOT NULL,
	subscription_id int8 NOT NULL,
	index_name varchar(200) NULL,
	vendor_id varchar(500) NULL,
	asset_id varchar(500) NULL,
	usage_start_date timestamp NULL,
	usage_end_date timestamp NULL,
	asset_status varchar(100) NULL,
	resource_id varchar(100) NULL,
	additional_fields jsonb NULL,
	processing_status varchar(1) NULL,
	processed_date timestamp NULL,
	created_on timestamp NULL,
	created_by_id varchar(100) NULL,
	created_by varchar(500) NULL,
	updated_on timestamp NULL,
	updated_by varchar(500) NULL,
	updated_by_id varchar(100) NULL,
	eps int8 DEFAULT 0.000 NULL
);

-- Permissions

ALTER TABLE public.siem_metering_data OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_metering_data TO siem_admin;


-- public.siem_notification_channels definition

-- Drop table

-- DROP TABLE public.siem_notification_channels;

CREATE TABLE public.siem_notification_channels (
	id bigserial NOT NULL,
	customer_id int8 NOT NULL,
	project_id int8 NOT NULL,
	subscription_id int8 NOT NULL,
	channel_name varchar(500) DEFAULT 'SIEMAlerts'::character varying NOT NULL,
	channel_desc varchar(500) NULL,
	config_type varchar(500) DEFAULT 'webhook'::character varying NOT NULL,
	channel_url varchar(500) NOT NULL,
	http_method varchar(500) NOT NULL,
	header_params text NULL,
	ext_channel_id varchar(500) NOT NULL,
	created_on timestamp NOT NULL,
	created_by varchar(500) NULL,
	updated_on timestamp NOT NULL,
	updated_by varchar(500) NULL,
	CONSTRAINT siem_notification_channels_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_notification_channels OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_notification_channels TO siem_admin;


-- public.siem_notification_settings_channel definition

-- Drop table

-- DROP TABLE public.siem_notification_settings_channel;

CREATE TABLE public.siem_notification_settings_channel (
	id serial4 NOT NULL,
	notification_type varchar(255) NULL,
	notification_origin varchar(255) NULL,
	api_key varchar(255) NULL,
	access_credentials varchar(255) NULL,
	is_enabled bool DEFAULT false NULL,
	created_by varchar(255) NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(255) NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT siem_notification_settings_channel_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_notification_settings_channel OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_notification_settings_channel TO siem_admin;


-- public.siem_notification_settings_template definition

-- Drop table

-- DROP TABLE public.siem_notification_settings_template;

CREATE TABLE public.siem_notification_settings_template (
	id serial4 NOT NULL,
	notification_type varchar(255) NULL,
	notification_origin varchar(255) NULL,
	email_template varchar(255) NULL,
	sms_template varchar(255) NULL,
	created_by varchar(255) NULL,
	created_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(255) NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NULL,
	email_content text NULL,
	sms_content text NULL,
	CONSTRAINT siem_notification_settings_template_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_notification_settings_template OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_notification_settings_template TO siem_admin;


-- public.siem_product_and_sku_codes definition

-- Drop table

-- DROP TABLE public.siem_product_and_sku_codes;

CREATE TABLE public.siem_product_and_sku_codes (
	meter_id varchar(500) NOT NULL,
	uom varchar(100) NOT NULL,
	product_id varchar(500) NULL,
	sku_id varchar(500) NULL,
	meter_id_value varchar(255) NULL,
	tenant_id varchar(255) NULL,
	customer_id varchar(255) NULL,
	product_sku_id varchar(255) NULL,
	CONSTRAINT siem_product_and_sku_codes_pkey PRIMARY KEY (meter_id)
);

-- Permissions

ALTER TABLE public.siem_product_and_sku_codes OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_product_and_sku_codes TO siem_admin;


-- public.siem_profile_master definition

-- Drop table

-- DROP TABLE public.siem_profile_master;

CREATE TABLE public.siem_profile_master (
	id bigserial NOT NULL,
	profile_id int8 NOT NULL,
	profile_name varchar(40) NULL,
	description varchar(40) NULL,
	profile_code varchar NOT NULL,
	CONSTRAINT siem_profile_master_pkey PRIMARY KEY (id),
	CONSTRAINT siem_profile_master_profile_id_check CHECK ((profile_id > 0))
);

-- Permissions

ALTER TABLE public.siem_profile_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_profile_master TO siem_admin;


-- public.siem_proj_event_count definition

-- Drop table

-- DROP TABLE public.siem_proj_event_count;

CREATE TABLE public.siem_proj_event_count (
	id int8 DEFAULT nextval('seq_siem_proj_event_count'::regclass) NOT NULL,
	project_id varchar(255) NOT NULL,
	eps varchar(10) NOT NULL,
	peak_event_count int4 NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NOT NULL,
	peak_event_timestamp timestamp NOT NULL,
	inserted_on timestamp NOT NULL,
	log_volume_gb numeric(10, 2) NULL
);

-- Permissions

ALTER TABLE public.siem_proj_event_count OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_proj_event_count TO siem_admin;


-- public.siem_proj_log_volume definition

-- Drop table

-- DROP TABLE public.siem_proj_log_volume;

CREATE TABLE public.siem_proj_log_volume (
	id int8 DEFAULT nextval('seq_siem_proj_log_volume'::regclass) NOT NULL,
	project_id varchar(255) NOT NULL,
	customer_id varchar(255) NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NOT NULL,
	inserted_on timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	log_volume_gb numeric(12, 2) NULL,
	CONSTRAINT siem_proj_log_volume_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_proj_log_volume OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_proj_log_volume TO siem_admin;


-- public.siem_project_log_type_event_count definition

-- Drop table

-- DROP TABLE public.siem_project_log_type_event_count;

CREATE TABLE public.siem_project_log_type_event_count (
	id serial4 NOT NULL,
	project_id int8 NOT NULL,
	log_type varchar(255) NOT NULL,
	event_count int8 NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	updated_at timestamp NULL,
	CONSTRAINT siem_project_log_type_event_c_project_id_log_type_start_tim_key UNIQUE (project_id, log_type, start_time, end_time),
	CONSTRAINT siem_project_log_type_event_count_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_project_log_type_event_count OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_project_log_type_event_count TO siem_admin;


-- public.siem_recipients_group definition

-- Drop table

-- DROP TABLE public.siem_recipients_group;

CREATE TABLE public.siem_recipients_group (
	id bigserial NOT NULL,
	group_name varchar(255) NULL,
	description varchar(255) NULL,
	recipients varchar(255) NULL,
	mobile_number varchar(255) NULL,
	created_by varchar(255) NULL,
	created_at timestamp NULL,
	updated_by varchar(255) NULL,
	updated_at timestamp NULL,
	is_deleted bool NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	CONSTRAINT siem_recipients_group_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_recipients_group OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_recipients_group TO siem_admin;


-- public.siem_reports_proj_sub_mapping definition

-- Drop table

-- DROP TABLE public.siem_reports_proj_sub_mapping;

CREATE TABLE public.siem_reports_proj_sub_mapping (
	id bigserial NOT NULL,
	customerid int8 NULL,
	projectid int8 NULL,
	subscriptionid int8 NULL,
	scheduleid int8 NULL,
	createdon timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	createdby varchar(255) NULL,
	createdbyid int8 NULL,
	updatedby varchar(255) NULL,
	updatedon timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updatedbyid int8 NULL,
	reportid int8 NULL,
	CONSTRAINT siem_reports_proj_sub_mapping_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_reports_proj_sub_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_reports_proj_sub_mapping TO siem_admin;


-- public.siem_sku_by_projsubsr definition

-- Drop table

-- DROP TABLE public.siem_sku_by_projsubsr;

CREATE TABLE public.siem_sku_by_projsubsr (
	id bigserial NOT NULL,
	siem_cust_sub_id varchar(50) NOT NULL,
	sku_code1 varchar(50) NULL,
	peak_eps int8 DEFAULT 0 NULL,
	sku_code2 varchar(50) NULL,
	log_retention int8 DEFAULT 0 NULL,
	sku_code3 varchar(50) NULL,
	log_archival int8 DEFAULT 0 NULL,
	sku_code4 varchar(50) NULL,
	num_of_assets int8 DEFAULT 0 NULL,
	siem_enabled bool DEFAULT false NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscr_id int8 NULL
);

-- Permissions

ALTER TABLE public.siem_sku_by_projsubsr OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_sku_by_projsubsr TO siem_admin;


-- public.siem_snapshot_info definition

-- Drop table

-- DROP TABLE public.siem_snapshot_info;

CREATE TABLE public.siem_snapshot_info (
	id bigserial NOT NULL,
	customer_id int8 NOT NULL,
	project_id int8 NOT NULL,
	subscr_id int8 NULL,
	snapshot_id varchar(50) NULL,
	failures varchar(50) NULL,
	created_on timestamp NULL,
	status varchar(50) NOT NULL,
	start_time timestamptz NULL,
	end_time timestamptz NULL,
	duration int8 NULL,
	created_by varchar(50) NULL,
	snapshot_name varchar(255) NULL,
	index_name text NULL,
	subscriber_id int8 NULL,
	snapshot_date timestamp NULL,
	repo varchar(255) NULL
);

-- Permissions

ALTER TABLE public.siem_snapshot_info OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_snapshot_info TO siem_admin;


-- public.siem_standard_report_master definition

-- Drop table

-- DROP TABLE public.siem_standard_report_master;

CREATE TABLE public.siem_standard_report_master (
	id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	description text NULL,
	report_type varchar(100) NULL,
	job_config_payload text NULL,
	CONSTRAINT siem_standard_report_master_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_standard_report_master OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_standard_report_master TO siem_admin;


-- public.siem_t2r_settings_details definition

-- Drop table

-- DROP TABLE public.siem_t2r_settings_details;

CREATE TABLE public.siem_t2r_settings_details (
	id bigserial NOT NULL,
	project_id int8 NOT NULL,
	project_name varchar(255) NOT NULL,
	t2r_status bool DEFAULT false NOT NULL,
	category_code varchar(50) NULL,
	category_name varchar(255) NULL,
	sub_category_code varchar(50) NULL,
	sub_category_name varchar(255) NULL,
	sub_sub_category_code varchar(50) NULL,
	sub_sub_category_name varchar(255) NULL,
	initiator_username varchar(255) NULL,
	initiator_email varchar(255) NULL,
	initiator_mobile varchar(255) NULL,
	status varchar(10) DEFAULT 'Active'::character varying NULL,
	enabled bool DEFAULT true NULL,
	created_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	updated_on timestamp(6) DEFAULT CURRENT_DATE NULL,
	created_by varchar(100) NULL,
	updated_by varchar(100) NULL,
	created_by_id int8 NULL,
	updated_by_id int8 NULL,
	CONSTRAINT siem_t2r_settings_details_pkey PRIMARY KEY (id),
	CONSTRAINT unique_project_id_siem_t2r_settings_details UNIQUE (project_id)
);

-- Permissions

ALTER TABLE public.siem_t2r_settings_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_t2r_settings_details TO siem_admin;


-- public.siem_temp_index definition

-- Drop table

-- DROP TABLE public.siem_temp_index;

CREATE TABLE public.siem_temp_index (
	"index" varchar NOT NULL,
	CONSTRAINT siem_temp_index_pk PRIMARY KEY (index)
);
COMMENT ON TABLE public.siem_temp_index IS 'This is a temporary table for listing index.';

-- Permissions

ALTER TABLE public.siem_temp_index OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_temp_index TO siem_admin;


-- public.siem_threat_intelligence_feeds definition

-- Drop table

-- DROP TABLE public.siem_threat_intelligence_feeds;

CREATE TABLE public.siem_threat_intelligence_feeds (
	id bigserial NOT NULL,
	ti_feed_id varchar(255) NOT NULL,
	ioc_filename varchar(255) NULL,
	source_name varchar(255) NULL,
	upload_time timestamp DEFAULT CURRENT_DATE NULL,
	source_type varchar(255) NULL,
	ioc_types varchar(255) NULL,
	ioc_count int8 NULL,
	customer_id int8 NULL,
	status varchar(15) DEFAULT 'Active'::character varying NULL,
	filepath varchar(150) NULL,
	description varchar(500) NULL,
	fileformat varchar(20) NULL,
	auditfield varchar(255) NULL,
	payload_response text NULL,
	enabled bool DEFAULT true NULL,
	uploaded_by varchar(255) NULL,
	updated_by varchar(255) NULL,
	updated_on timestamp NULL
);

-- Permissions

ALTER TABLE public.siem_threat_intelligence_feeds OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_threat_intelligence_feeds TO siem_admin;


-- public.siem_threat_intelligence_feeds_project_mapping definition

-- Drop table

-- DROP TABLE public.siem_threat_intelligence_feeds_project_mapping;

CREATE TABLE public.siem_threat_intelligence_feeds_project_mapping (
	id bigserial NOT NULL,
	ti_feed_id varchar(255) NOT NULL,
	project_id int8 NULL,
	project_name varchar(255) NULL,
	enabled bool DEFAULT true NULL
);

-- Permissions

ALTER TABLE public.siem_threat_intelligence_feeds_project_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_threat_intelligence_feeds_project_mapping TO siem_admin;


-- public.siem_threat_intelligence_fields definition

-- Drop table

-- DROP TABLE public.siem_threat_intelligence_fields;

CREATE TABLE public.siem_threat_intelligence_fields (
	id bigserial NOT NULL,
	field_name varchar(100) NULL,
	field_type varchar(100) NULL,
	field_value varchar(1000) NULL,
	severity varchar(50) NULL,
	created_on timestamp DEFAULT CURRENT_DATE NULL,
	updated_on timestamp NULL,
	description varchar(500) NULL,
	labels varchar(100) NULL,
	spec_version varchar(30) NULL,
	created_by varchar(255) NULL
);

-- Permissions

ALTER TABLE public.siem_threat_intelligence_fields OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_threat_intelligence_fields TO siem_admin;


-- public.siem_threat_intelligence_fields_feed_mapping definition

-- Drop table

-- DROP TABLE public.siem_threat_intelligence_fields_feed_mapping;

CREATE TABLE public.siem_threat_intelligence_fields_feed_mapping (
	id bigserial NOT NULL,
	ti_feed_id varchar(255) NOT NULL,
	ti_source_name varchar(255) NOT NULL,
	ti_field_id int8 NOT NULL
);

-- Permissions

ALTER TABLE public.siem_threat_intelligence_fields_feed_mapping OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_threat_intelligence_fields_feed_mapping TO siem_admin;


-- public.siem_triggers definition

-- Drop table

-- DROP TABLE public.siem_triggers;

CREATE TABLE public.siem_triggers (
	id serial4 NOT NULL,
	trigger_name varchar(500) NULL,
	ext_trigger_id varchar(500) NULL,
	detector_id int8 NULL,
	status varchar(500) NULL,
	enabled varchar(500) NULL,
	created_by_id varchar(500) NULL,
	created_on timestamp NOT NULL,
	created_by varchar(500) NULL,
	updated_by_id varchar(500) NULL,
	updated_on timestamp NOT NULL,
	updated_by varchar(500) NULL,
	trigger_detection_ruleslist _text NULL,
	description text NULL,
	field_list _text NULL,
	severity varchar(20) NULL,
	auto_incident bool DEFAULT false NULL,
	unique_trigger_name varchar(500) NULL,
	CONSTRAINT siem_triggers_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_triggers OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_triggers TO siem_admin;


-- public.siem_zato_token definition

-- Drop table

-- DROP TABLE public.siem_zato_token;

CREATE TABLE public.siem_zato_token (
	id int8 NOT NULL,
	access_token text NULL,
	access_token_expiration int8 NULL,
	refresh_token text NULL,
	refresh_token_expiration int8 NULL,
	created_on timestamp NULL,
	updated_on timestamp NULL,
	CONSTRAINT siem_zato_token_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.siem_zato_token OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_zato_token TO siem_admin;


-- public.sync_mon_alert_details definition

-- Drop table

-- DROP TABLE public.sync_mon_alert_details;

CREATE TABLE public.sync_mon_alert_details (
	alert_id varchar(500) NOT NULL,
	customer_id int8 NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	resource_id int8 NULL,
	resource_type varchar(500) NULL,
	agent_id varchar(500) NULL,
	plugin_name varchar(500) NULL,
	alert_type varchar(500) NULL,
	plugin_type varchar(500) NULL,
	plugin_subtype varchar(500) NULL,
	title varchar(1000) NULL,
	description varchar(2000) NULL,
	severity varchar(100) NULL,
	value_labels varchar(100) NULL,
	threshold_expression varchar(100) NULL,
	plugin_id int8 NULL,
	ipaddress varchar(500) NULL,
	hostname varchar(100) NULL,
	created_on timestamp(6) NULL,
	updated_on timestamp(6) NULL,
	closed_on timestamp(6) NULL,
	state varchar(100) DEFAULT 'open'::character varying NULL,
	occurrence_count int8 NULL,
	insert_on timestamp(6) DEFAULT CURRENT_TIMESTAMP NULL,
	insert_by varchar(100) NULL,
	ack_time timestamp(6) NULL,
	ack_by varchar(100) NULL,
	ack_id varchar(100) NULL,
	last_update_time timestamp(6) NULL,
	last_update_by varchar(100) NULL,
	status varchar(100) DEFAULT 'open'::character varying NULL,
	value varchar(100) NULL,
	last_update_category varchar(100) NULL,
	hierachy_map_id int8 NULL,
	closure_time int8 NULL,
	metric_id int8 NULL,
	assetid varchar(255) NULL,
	asset_type varchar(50) NULL,
	hierarchy_name varchar(100) NULL,
	technology_category varchar(100) NULL,
	technology_name varchar(50) NULL,
	metric_name varchar(100) NULL,
	enviorment varchar(100) NULL,
	collaboration_flag varchar(255) DEFAULT 'y'::bpchar NULL,
	instance_id varchar(50) NULL,
	descriptor_id int8 NULL,
	descriptor_name varchar(250) NULL,
	alert_uuid varchar(100) NULL,
	eta_date timestamp(6) NULL,
	raci varchar(4000) NULL,
	master_alert_id varchar(100) NULL,
	escalation_level int8 NULL,
	escalation_sla timestamp NULL,
	closed_sla timestamp NULL,
	r_uuid varchar(200) NULL,
	recordid varchar(100) NULL,
	alert_impact int8 NULL,
	service varchar(5) NULL,
	purpose int8 NULL,
	enviornment varchar(255) NULL,
	detector_name varchar(255) NULL,
	detector_id int8 DEFAULT 1820 NULL,
	ext_rule_id varchar DEFAULT '63647769-326d-4dde-a419-b925cc0caf42'::character varying NOT NULL,
	rule_id varchar(255) NULL,
	CONSTRAINT sync_mon_alert_details_pkey PRIMARY KEY (alert_id)
);

-- Permissions

ALTER TABLE public.sync_mon_alert_details OWNER TO siem_admin;
GRANT ALL ON TABLE public.sync_mon_alert_details TO siem_admin;


-- public.test_table definition

-- Drop table

-- DROP TABLE public.test_table;

CREATE TABLE public.test_table (
	id serial4 NOT NULL,
	"name" varchar(100) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT test_table_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE public.test_table OWNER TO siem_admin;
GRANT ALL ON TABLE public.test_table TO siem_admin;


-- public.siem_report_schedules definition

-- Drop table

-- DROP TABLE public.siem_report_schedules;

CREATE TABLE public.siem_report_schedules (
	schedule_id bigserial NOT NULL,
	schedule_name varchar(255) NOT NULL,
	job_schedule_id int8 NOT NULL,
	report_id int8 NOT NULL,
	cron varchar(255) NULL,
	frequency varchar(50) NOT NULL,
	project_id int8 NULL,
	subscription_id int8 NULL,
	recipients varchar NULL,
	end_timestamp timestamp NULL,
	latest_report_id int8 NULL,
	latest_report_timestamp timestamp NULL,
	created_by varchar(255) NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	updated_by varchar(255) NULL,
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	is_deleted bool DEFAULT false NOT NULL,
	deleted_at timestamp NULL,
	txn_uuid varchar NULL,
	customer_id int8 NULL,
	group_id varchar(255) NULL,
	CONSTRAINT siem_report_schedules_pkey PRIMARY KEY (schedule_id),
	CONSTRAINT fk_report_id FOREIGN KEY (report_id) REFERENCES public.siem_standard_report_master(id)
);

-- Permissions

ALTER TABLE public.siem_report_schedules OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_report_schedules TO siem_admin;


-- public.siem_reports_history definition

-- Drop table

-- DROP TABLE public.siem_reports_history;

CREATE TABLE public.siem_reports_history (
	id bigserial NOT NULL,
	schedule_id int8 NOT NULL,
	report_token varchar(500) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	file_name varchar NULL,
	is_mail_sent bool NULL,
	CONSTRAINT siem_reports_history_pkey PRIMARY KEY (id),
	CONSTRAINT fk_schedule FOREIGN KEY (schedule_id) REFERENCES public.siem_report_schedules(schedule_id)
);

-- Permissions

ALTER TABLE public.siem_reports_history OWNER TO siem_admin;
GRANT ALL ON TABLE public.siem_reports_history TO siem_admin;
