-- Oracle EBS Day 8 - Create Value Set and Add It to Parameters Report
-- Student: Abdullah Alhadabi

SET SERVEROUTPUT ON;

-- ============================================================
-- Value Set Metadata
-- ============================================================
SELECT
    'ABDULLAH_FACTORIAL_VS' AS value_set_name,
    'Factorial number parameter' AS description,
    'List of Values' AS list_type,
    'No Security' AS security_type,
    'Number' AS format_type,
    10 AS maximum_size,
    0 AS precision,
    0 AS minimum_value,
    10 AS maximum_value,
    'None' AS validation_type
FROM dual;

-- ============================================================
-- Concurrent Program Parameter Metadata
-- ============================================================
SELECT
    'ABDULLAH_Factorial' AS program_name,
    'P_NUM' AS parameter_name,
    'Number to calculate factorial' AS description,
    'ABDULLAH_FACTORIAL_VS' AS value_set_name,
    'Yes' AS required_flag
FROM dual;

-- ============================================================
-- EBS Setup Reference
-- ============================================================
-- Program: ABDULLAH_Factorial
-- Parameter: P_NUM
-- Value Set: ABDULLAH_FACTORIAL_VS
-- Required: Yes
