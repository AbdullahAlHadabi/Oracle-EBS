-- Oracle EBS Day 8 - Restrict Personalization Access
-- Student: Abdullah Alhadabi

SET SERVEROUTPUT ON;

-- ============================================================
-- Profile Option Configuration
-- ============================================================
SELECT
    'System Administrator -> Profile -> System' AS navigation,
    'Personalize Self-Service Defn' AS profile_option,
    'No' AS site_value,
    'ABDULLAH_ALHADABI' AS user_name,
    'Yes' AS user_value,
    'FND: Personalization Region Link Enabled' AS optional_profile_option,
    'No' AS optional_site_value,
    'Yes' AS optional_user_value
FROM dual;

-- ============================================================
-- Warning
-- ============================================================
-- Site-level changes affect other users and require supervisor approval in a shared environment.

-- ============================================================
-- Evidence Checklist
-- ============================================================
-- Screenshot showing the profile option Personalize Self-Service Defn with Site Value = No and User Value = Yes for ABDULLAH_ALHADABI.
-- Screenshot showing the optional profile option FND: Personalization Region Link Enabled with Site Value = No and User Value = Yes.
-- Screenshot confirming the personalization restriction behavior in the application.
