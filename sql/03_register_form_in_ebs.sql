-- Oracle EBS Day 8 - Register Form in EBS
-- Student: Abdullah Alhadabi

SET SERVEROUTPUT ON;

-- ============================================================
-- Form Registration Metadata
-- ============================================================
SELECT
    'AbdullahAlhadabi.fmb' AS form_source_file,
    'AbdullahAlhadabi.fmx' AS compiled_form_file,
    'ABDULLAHALHADABI' AS form_name,
    'Application Object Library' AS application,
    'Abdullah Alhadabi Form' AS user_form_name,
    'ABDULLAH_ALHADABI_FN' AS function_name,
    'ABDULLAH_FORM_MENU' AS menu_name,
    'ABDULLAH_FORM_RESP' AS responsibility_name,
    'ABDULLAH_FORM_RESP_KEY' AS responsibility_key,
    'ABDULLAH_ALHADABI' AS user_name
FROM dual;

-- ============================================================
-- EBS Setup Reference
-- ============================================================
-- Form Source File: AbdullahAlhadabi.fmb
-- Compiled Form File: AbdullahAlhadabi.fmx
-- Form Name: ABDULLAHALHADABI
-- Application: Application Object Library
-- User Form Name: Abdullah Alhadabi Form
-- Function: ABDULLAH_ALHADABI_FN
-- Menu: ABDULLAH_FORM_MENU
-- Responsibility: ABDULLAH_FORM_RESP
-- Responsibility Key: ABDULLAH_FORM_RESP_KEY
-- User: ABDULLAH_ALHADABI
