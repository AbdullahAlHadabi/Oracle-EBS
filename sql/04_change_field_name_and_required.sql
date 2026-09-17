-- Oracle EBS Day 8 - Change Field Name and Make Field Mandatory
-- Student: Abdullah Alhadabi

SET SERVEROUTPUT ON;

-- ============================================================
-- Form Change Metadata
-- ============================================================
SELECT
    'ABDULLAH_FIELD_REQUIRED.fmb' AS saved_copy_name,
    'Open the source form' AS step_1,
    'Open Data Blocks and select the required item' AS step_2,
    'Open the Property Palette' AS step_3,
    'Change the Prompt property to the new field name' AS step_4,
    'Set the Required property to Yes' AS step_5,
    'Save and compile the form' AS step_6,
    'Run the form and confirm the mandatory field is yellow' AS step_7
FROM dual;

-- ============================================================
-- Evidence Checklist
-- ============================================================
-- Property Palette showing the new Prompt.
-- Property Palette showing Required equals Yes.
-- Runtime form showing the yellow mandatory field.
