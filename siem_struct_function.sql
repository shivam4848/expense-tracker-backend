-- DROP FUNCTION public.convert_bytes_to_human_readable(int8);

CREATE OR REPLACE FUNCTION public.convert_bytes_to_human_readable(bytes bigint)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF bytes >= 1024 * 1024 * 1024 THEN
        RETURN ROUND(bytes / (1024.0 * 1024 * 1024), 2)::TEXT || ' GB';
    ELSIF bytes >= 1024 * 1024 THEN
        RETURN ROUND(bytes / (1024.0 * 1024), 2)::TEXT || ' MB';
    ELSIF bytes >= 1024 THEN
        RETURN ROUND(bytes / 1024.0, 2)::TEXT || ' KB';
    ELSE
        RETURN bytes::TEXT || ' Bytes';
    END IF;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.convert_bytes_to_human_readable(int8) OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.convert_bytes_to_human_readable(int8) TO siem_admin;

-- DROP FUNCTION public.get_asset_cb_mertics();

CREATE OR REPLACE FUNCTION public.get_asset_cb_mertics()
 RETURNS TABLE(res_project_id bigint, project_name character varying, res_asset_id character varying, asset_name character varying, technology_category_id bigint, technology_id bigint, technology_category_name character varying, technology_name character varying, status character varying, onboard_start_date date, onboard_end_date date, hostname character varying, agent_id character varying, agent_status character varying, provider_id character varying, customer_id character varying, total_eps_day numeric, total_eps_month numeric, total_events_day bigint, total_events_month bigint)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    WITH

    DistinctProjects AS (
        SELECT
            scs.project_id,
            scs.project_name
        FROM public.siem_cust_subscriptions scs
        WHERE
            scs.module_initialized = true
            AND scs.project_id IS NOT NULL
            AND scs.project_name IS NOT NULL
        GROUP BY scs.project_id, scs.project_name
    ),

    Assets AS (
        SELECT DISTINCT
            scam.project_id,
            td.asset_id,
            td.technology_category_id,
            td.technology_id
        FROM siem_cust_asset_master AS scam
        JOIN siem_cust_asset_tech_details AS td
            ON scam.asset_id = td.asset_id
        LEFT JOIN siem_cust_asset_onboard_master AS onboarded
            ON scam.asset_id = onboarded.asset_id
            AND onboarded.technology_category_id = td.technology_category_id
            AND onboarded.technology_id = td.technology_id
        LEFT JOIN siem_log_type_technology_mapping sltm
            ON sltm.technology_category_id = td.technology_category_id
            AND sltm.technology_id = td.technology_id
        LEFT JOIN siem_log_types slt
            ON slt.id = sltm.log_type_id
        WHERE
            scam.is_monitored = 'Yes'
            AND scam.is_deleted = 'N'
            AND slt.is_enabled = TRUE
            AND sltm.enabled = TRUE
            AND onboarded.status = 'Active'
    ),

    OnboardDetailsForAssets AS (
        SELECT
            onboardedAssets.project_id,
            onboardedAssets.asset_id,
            onboardedAssets.technology_category_id,
            onboardedAssets.technology_id,
            onboardedAssets.status,
            onboardedAssets.onboard_start_date,
            onboardedAssets.onboard_end_date
        FROM (
            SELECT
                ast.*,
                aom.status,
                aom.onboard_start_date,
                aom.onboard_end_date,
                ROW_NUMBER() OVER (
                    PARTITION BY aom.asset_id, aom.technology_category_id, aom.technology_id
                    ORDER BY aom.onboard_start_date DESC
                ) AS rn
            FROM Assets ast
            JOIN public.siem_cust_asset_onboard_master aom
                ON aom.asset_id = ast.asset_id
                AND aom.technology_category_id = ast.technology_category_id
                AND aom.technology_id = ast.technology_id
        ) onboardedAssets
        WHERE rn = 1
    ),

    AssetOtherDetails AS (
        SELECT
            asset.project_id,
            asset.asset_id,
            asset.asset_name,
            asset.technology_category_id,
            asset.technology_id,
            asset.status,
            asset.onboard_start_date,
            asset.onboard_end_date,
            asset.hostname,
            asset.agent_id,
            asset.agent_status,
            asset.provider_id,
            asset.customer_id
        FROM (
            SELECT
                ast.*,
                am.asset_name,
                am.hostname,
                am.agent_id,
                am.agent_status,
                am.provider_id,
                am.customer_id,
                ROW_NUMBER() OVER (PARTITION BY ast.asset_id ORDER BY am.created_on DESC) AS rn
            FROM OnboardDetailsForAssets ast
            LEFT JOIN siem_cust_asset_master am
                ON am.asset_id = ast.asset_id
            WHERE am.is_monitored = 'Yes'
              AND am.is_deleted = 'N'
        ) asset
        WHERE rn = 1
    ),

    TechDetailsForAssets AS (
        SELECT
            sub.project_id,
            sub.asset_id,
            sub.asset_name,
            sub.technology_category_id,
            sub.technology_id,
            sub.technology_category_name,
            sub.technology_name,
            sub.status,
            sub.onboard_start_date,
            sub.onboard_end_date,
            sub.hostname,
            sub.agent_id,
            sub.agent_status,
            sub.provider_id,
            sub.customer_id
        FROM (
            SELECT
                ast.*,
                atd.technology_category_name,
                atd.technology_name,
                ROW_NUMBER() OVER (
                    PARTITION BY ast.asset_id, ast.technology_category_id, ast.technology_id
                    ORDER BY atd.id
                ) AS rn
            FROM AssetOtherDetails ast
            LEFT JOIN siem_cust_asset_tech_details atd
                ON atd.asset_id = ast.asset_id
                AND atd.technology_category_id = ast.technology_category_id
                AND atd.technology_id = ast.technology_id
        ) sub
        WHERE rn = 1
    ),

    EventsPerAsset AS (
        SELECT
            asset_id,
            CEIL(SUM(CASE
                WHEN event_timestamp::DATE = CURRENT_DATE THEN event_count / 3600.0
                ELSE 0
            END)) AS total_eps_day,
            CEIL(SUM(event_count / 3600.0)) AS total_eps_month,
            SUM(CASE
                WHEN event_timestamp::DATE = CURRENT_DATE THEN event_count
                ELSE 0
            END) AS total_events_day,
            SUM(event_count) AS total_events_month
        FROM public.siem_cust_metering_event_count_agg_hour
        WHERE inserted_on >= date_trunc('month', CURRENT_DATE)
          AND inserted_on < date_trunc('month', CURRENT_DATE + INTERVAL '1 MONTH')
        GROUP BY asset_id
    ),

    Res AS (
        SELECT ast.*, dp.project_name
        FROM DistinctProjects dp
        LEFT JOIN TechDetailsForAssets ast
            ON dp.project_id = ast.project_id
        ORDER BY dp.project_id, ast.asset_id
    )

    SELECT
        res.project_id::BIGINT AS res_project_id,
        res.project_name::VARCHAR,
        res.asset_id::VARCHAR AS res_asset_id,
        res.asset_name::VARCHAR,
        res.technology_category_id::BIGINT,
        res.technology_id::BIGINT,
        res.technology_category_name::VARCHAR,
        res.technology_name::VARCHAR,
        res.status::VARCHAR,
        res.onboard_start_date::DATE,
        res.onboard_end_date::DATE,
        res.hostname::VARCHAR,
        res.agent_id::VARCHAR,
        res.agent_status::VARCHAR,
        res.provider_id::VARCHAR,
        res.customer_id::VARCHAR,
        COALESCE(et.total_eps_day, 0)::NUMERIC AS total_eps_day,
        COALESCE(et.total_eps_month, 0)::NUMERIC AS total_eps_month,
        COALESCE(et.total_events_day, 0)::BIGINT AS total_events_day,
        COALESCE(et.total_events_month, 0)::BIGINT AS total_events_month
    FROM Res res
    LEFT JOIN EventsPerAsset et
        ON et.asset_id = res.asset_id;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.get_asset_cb_mertics() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.get_asset_cb_mertics() TO siem_admin;

-- DROP FUNCTION public.get_correlation_rules_cb_mertics();

CREATE OR REPLACE FUNCTION public.get_correlation_rules_cb_mertics()
 RETURNS TABLE(correlation_rule_id bigint, rule_name character varying, project_id bigint, project_name character varying, logtype_name text, updated_on timestamp without time zone)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    WITH logtype_lookup AS (
        SELECT id,
               display_name
        FROM public.siem_log_types
    ),
    datasource_logs AS (
        SELECT d.correlation_rule_id,
               STRING_AGG(l.display_name, ', ') AS "Logtype Name"
        FROM public.siem_cust_correlation_datasources d
        LEFT JOIN logtype_lookup l ON d.log_type_id = l.id
        GROUP BY d.correlation_rule_id
    ),
    correlation_info AS (
        SELECT DISTINCT r.id AS "Correlation Rule ID",
                       r.rule_name AS "Rule Name",
                       r.project_id AS "Project ID",
                       s.project_name AS "Project Name",
                       r.updated_on AS "Updated On"
        FROM public.siem_cust_correlation_rules r
        LEFT JOIN public.siem_cust_subscriptions s ON r.project_id = s.project_id
        WHERE r.enabled IS NULL AND s.project_name IS NOT NULL
    ),
    DistinctProjects AS (
        SELECT scs.project_id, scs.project_name
        FROM public.siem_cust_subscriptions scs
        WHERE scs.module_initialized = true
          AND scs.project_id IS NOT NULL
          and scs.project_name is not null
        GROUP BY scs.project_id, scs.project_name
    )
    SELECT ci."Correlation Rule ID" as correlation_rule_id,
           ci."Rule Name" as rule_name,
           ci."Project ID" as project_id,
           ci."Project Name" as project_name,
           dl."Logtype Name" as logtype_name,
           ci."Updated On" as updated_on
    FROM correlation_info ci
    LEFT JOIN datasource_logs dl ON ci."Correlation Rule ID" = dl.correlation_rule_id
    inner join DistinctProjects dp ON ci."Project ID" = dp.project_id
    ORDER BY ci."Updated On" desc;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.get_correlation_rules_cb_mertics() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.get_correlation_rules_cb_mertics() TO siem_admin;

-- DROP FUNCTION public.get_detectors_cb_mertics();

CREATE OR REPLACE FUNCTION public.get_detectors_cb_mertics()
 RETURNS TABLE(detector_name character varying, res_project_id bigint, res_project_name character varying, status character varying, type character varying, log_type character varying, frequency text, updated_on timestamp without time zone)
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    WITH DistinctProjects AS (
        SELECT
            project_id, project_name
        FROM public.siem_cust_subscriptions
        WHERE module_initialized = true
          AND project_id IS NOT NULL
          AND project_name IS NOT NULL
        GROUP BY project_id, project_name
    )
    SELECT DISTINCT ON (d.ext_detector_id)
        d.detector_name,
        d.project_id as res_project_id,
        dp.project_name as res_project_name,
        d.status,
        d.detector_type2,
        l.display_name,
        CASE
            WHEN d.detector_type2 IN ('Per-Query Detector', 'Per-Bucket Detector') THEN
                COALESCE(
                    CONCAT(
                        (request_payload::JSONB->'schedule'->'period'->>'interval') || ' ' ||
                        (request_payload::JSONB->'schedule'->'period'->>'unit')
                    ),
                    d.schedule_unit || d.schedule_uom
                )
            ELSE d.schedule_unit || d.schedule_uom
        END AS frequency,
        d.updated_on
    FROM public.siem_cust_detectors d
    LEFT JOIN public.siem_log_types l ON d.log_type_id = l.id
    LEFT JOIN public.siem_cust_subscriptions s ON d.project_id = s.project_id
    inner JOIN DistinctProjects dp ON d.project_id = dp.project_id
    WHERE d.enabled = 'present'
      AND d.status = 'Active'
    ORDER BY d.ext_detector_id, d.updated_on desc;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.get_detectors_cb_mertics() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.get_detectors_cb_mertics() TO siem_admin;

-- DROP FUNCTION public.get_project_asset_events_cb_mertics();

CREATE OR REPLACE FUNCTION public.get_project_asset_events_cb_mertics()
 RETURNS TABLE(res_project_id bigint, project_name character varying, total_assets bigint, assets_onboarded bigint, assets_not_onboarded bigint, total_eps_day numeric, total_eps_month numeric, total_events_day bigint, total_events_month bigint)
 LANGUAGE plpgsql
AS $function$

BEGIN
    RETURN QUERY
    WITH

    -- collect distinct siem enabled projects
    DistinctProjects AS (
        SELECT
            scs.project_id,
            scs.project_name
        FROM
            public.siem_cust_subscriptions scs
        WHERE
            scs.module_initialized = true
            AND scs.project_id IS NOT null
            AND scs.project_name IS NOT null
        GROUP BY
            scs.project_id,
            scs.project_name
    ),

    -- Accurate asset counts per projects
    ProjectAssetCounts AS (
        SELECT
            scam.project_id,
            COUNT(DISTINCT (td.asset_id, td.technology_category_id, td.technology_id))
                FILTER (WHERE onboarded.status = 'Active') AS assets_onboarded,
            COUNT(DISTINCT (td.asset_id, td.technology_category_id, td.technology_id)) AS total_assets
        FROM siem_cust_asset_master AS scam
        JOIN siem_cust_asset_tech_details AS td
            ON scam.asset_id = td.asset_id
        LEFT JOIN siem_cust_asset_onboard_master AS onboarded
            ON scam.asset_id = onboarded.asset_id
            AND onboarded.technology_category_id = td.technology_category_id
            AND onboarded.technology_id = td.technology_id
        LEFT JOIN siem_log_type_technology_mapping sltm
            ON sltm.technology_category_id = td.technology_category_id
            AND sltm.technology_id = td.technology_id
        LEFT JOIN siem_log_types slt
            ON slt.id = sltm.log_type_id
        WHERE scam.is_monitored = 'Yes'
            AND scam.is_deleted = 'N'
            AND slt.is_enabled = TRUE
            AND sltm.enabled = TRUE
        GROUP BY scam.project_id
    ),

    -- EPS and total events per project
    EventsTable AS (
        SELECT
            CAST(project_id AS INT8) AS project_id,

            CEIL(SUM(CASE
                WHEN event_timestamp::DATE = CURRENT_DATE THEN event_count / 3600.0
                ELSE 0
            END)) AS total_eps_day,

            CEIL(SUM(event_count / 3600.0)) AS total_eps_month,

            SUM(CASE
                WHEN event_timestamp::DATE = CURRENT_DATE THEN event_count
                ELSE 0
            END) AS total_events_day,

            SUM(event_count) AS total_events_month

        FROM public.siem_cust_metering_event_count_agg_hour
        WHERE project_id IS NOT NULL
            AND inserted_on >= date_trunc('month', CURRENT_DATE)
            AND inserted_on < date_trunc('month', CURRENT_DATE + INTERVAL '1 MONTH')
        GROUP BY project_id
    )

    -- Final project-level data
    SELECT
        dp.project_id as res_project_id,
        dp.project_name ,

        COALESCE(pac.total_assets, 0) AS total_assets,
        COALESCE(pac.assets_onboarded, 0) AS assets_onboarded,
        COALESCE(pac.total_assets, 0) - COALESCE(pac.assets_onboarded, 0) as assets_not_onboarded,

        COALESCE(et.total_eps_day, 0) AS total_eps_day,
        COALESCE(et.total_eps_month, 0) AS total_eps_month,
        COALESCE(et.total_events_day, 0) AS total_events_day,
        COALESCE(et.total_events_month, 0) AS total_events_month

    FROM DistinctProjects dp
    LEFT JOIN ProjectAssetCounts pac ON dp.project_id = pac.project_id
    LEFT JOIN EventsTable et ON dp.project_id = et.project_id

    GROUP BY
        dp.project_id,
        dp.project_name,
        pac.total_assets,
        pac.assets_onboarded,
        et.total_eps_day,
        et.total_eps_month,
        et.total_events_day,
        et.total_events_month;

END;
$function$
;

-- Permissions

ALTER FUNCTION public.get_project_asset_events_cb_mertics() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.get_project_asset_events_cb_mertics() TO siem_admin;

-- DROP FUNCTION public.set_default_status();

CREATE OR REPLACE FUNCTION public.set_default_status()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.status := 'Unacknowledged';
    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.set_default_status() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.set_default_status() TO siem_admin;

-- DROP FUNCTION public.trg_update_related_alerts();

CREATE OR REPLACE FUNCTION public.trg_update_related_alerts()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    PERFORM update_related_alert_count(NEW.parent_alert);
    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.trg_update_related_alerts() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.trg_update_related_alerts() TO siem_admin;

-- DROP FUNCTION public.update_parent_alert_status();

CREATE OR REPLACE FUNCTION public.update_parent_alert_status()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Update the status in siem_alert_parent_count_details table
    UPDATE public.siem_alert_parent_count_details
    SET parent_alert_status = NEW.status
    WHERE parent_alert = OLD.alert_uuid;
    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.update_parent_alert_status() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.update_parent_alert_status() TO siem_admin;

-- DROP FUNCTION public.update_related_alert_count(varchar);

CREATE OR REPLACE FUNCTION public.update_related_alert_count(p_alert_id character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN
    INSERT INTO siem_alert_parent_count_details (parent_alert, related_alert_count)
    VALUES (p_alert_id, 0)
    ON CONFLICT (parent_alert)
    DO UPDATE SET
        related_alert_count = siem_alert_parent_count_details.related_alert_count + 1;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.update_related_alert_count(varchar) OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.update_related_alert_count(varchar) TO siem_admin;

-- DROP FUNCTION public.update_related_alert_count_on_insert();

CREATE OR REPLACE FUNCTION public.update_related_alert_count_on_insert()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
        BEGIN
            IF NEW.parent_alert_id IS NOT NULL AND NEW.parent_alert_id <> NEW.alert_uuid THEN
                IF EXISTS (
                    SELECT 1
                    FROM public.siem_alerts_summary
                    WHERE alert_uuid = NEW.parent_alert_id
                      AND alert_type = 'Parent'
                      AND status = 'Unacknowledged'
                ) THEN
                    UPDATE public.siem_alerts_summary
                    SET related_alert_count = COALESCE(related_alert_count, 0) + 1
                    WHERE alert_uuid = NEW.parent_alert_id
                      AND alert_type = 'Parent'
                      AND status = 'Unacknowledged';
                END IF;
            END IF;
            RETURN NEW;
        END;
        $function$
;

-- Permissions

ALTER FUNCTION public.update_related_alert_count_on_insert() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.update_related_alert_count_on_insert() TO siem_admin;

-- DROP FUNCTION public.update_siem_alerts_summary_from_incident();

CREATE OR REPLACE FUNCTION public.update_siem_alerts_summary_from_incident()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Check if the siem_alerts_summary table exists
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'siem_alerts_summary') THEN
        RAISE NOTICE 'Table siem_alerts_summary does not exist';
        RETURN NULL;
    END IF;

    -- Check if the siem_incident_master table exists
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'siem_incident_master') THEN
        RAISE NOTICE 'Table siem_incident_master does not exist';
        RETURN NULL;
    END IF;

    -- Check if the alert_id column exists in siem_alerts_summary table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alerts_summary' AND column_name = 'alert_id') THEN
        RAISE NOTICE 'Column alert_id does not exist in table siem_alerts_summary';
        RETURN NULL;
    END IF;

    -- Check if the incident_count column exists in siem_alerts_summary table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alerts_summary' AND column_name = 'incident_count') THEN
        RAISE NOTICE 'Column incident_count does not exist in table siem_alerts_summary';
        RETURN NULL;
    END IF;

    -- Check if the alert_id column exists in siem_incident_master table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_incident_master' AND column_name = 'alert_id') THEN
        RAISE NOTICE 'Column alert_id does not exist in table siem_incident_master';
        RETURN NULL;
    END IF;

    -- Handle INSERT or UPDATE
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        -- Update the incident_count in the summary table
        UPDATE siem_alerts_summary
        SET incident_count = (
            SELECT COUNT(*)
            FROM siem_incident_master
            WHERE alert_id = NEW.alert_id
        )
        WHERE alert_id = NEW.alert_id;
    END IF;

    -- Handle DELETE
    IF (TG_OP = 'DELETE') THEN
        -- Update the incident_count in the summary table
        UPDATE siem_alerts_summary
        SET incident_count = (
            SELECT COUNT(*)
            FROM siem_incident_master
            WHERE alert_id = OLD.alert_id
        )
        WHERE alert_id = OLD.alert_id;
    END IF;

    RETURN NULL;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.update_siem_alerts_summary_from_incident() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.update_siem_alerts_summary_from_incident() TO siem_admin;

-- DROP FUNCTION public.update_siem_alerts_summary_from_parent_count();

CREATE OR REPLACE FUNCTION public.update_siem_alerts_summary_from_parent_count()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- Check if the siem_alerts_summary table exists
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'siem_alerts_summary') THEN
        RAISE NOTICE 'Table siem_alerts_summary does not exist';
        RETURN NULL;
    END IF;

    -- Check if the siem_alert_parent_count_details table exists
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'siem_alert_parent_count_details') THEN
        RAISE NOTICE 'Table siem_alert_parent_count_details does not exist';
        RETURN NULL;
    END IF;

    -- Check if the alert_uuid column exists in the siem_alerts_summary table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alerts_summary' AND column_name = 'alert_uuid') THEN
        RAISE NOTICE 'Column alert_uuid does not exist in table siem_alerts_summary';
        RETURN NULL;
    END IF;

    -- Check if the related_alert_count column exists in the siem_alerts_summary table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alerts_summary' AND column_name = 'related_alert_count') THEN
        RAISE NOTICE 'Column related_alert_count does not exist in table siem_alerts_summary';
        RETURN NULL;
    END IF;

    -- Check if the parent_alert column exists in the siem_alert_parent_count_details table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alert_parent_count_details' AND column_name = 'parent_alert') THEN
        RAISE NOTICE 'Column parent_alert does not exist in table siem_alert_parent_count_details';
        RETURN NULL;
    END IF;

    -- Check if the related_alert_count column exists in the siem_alert_parent_count_details table
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'siem_alert_parent_count_details' AND column_name = 'related_alert_count') THEN
        RAISE NOTICE 'Column related_alert_count does not exist in table siem_alert_parent_count_details';
        RETURN NULL;
    END IF;

    -- Handle INSERT or UPDATE
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        UPDATE siem_alerts_summary
        SET related_alert_count = COALESCE(NEW.related_alert_count, 0)
        WHERE alert_uuid = NEW.parent_alert;
    END IF;

    -- Handle DELETE
    IF (TG_OP = 'DELETE') THEN
        UPDATE siem_alerts_summary
        SET related_alert_count = 0
        WHERE alert_uuid = OLD.parent_alert;
    END IF;

    RETURN NULL;
END;
$function$
;

-- Permissions

ALTER FUNCTION public.update_siem_alerts_summary_from_parent_count() OWNER TO siem_admin;
GRANT ALL ON FUNCTION public.update_siem_alerts_summary_from_parent_count() TO siem_admin;
