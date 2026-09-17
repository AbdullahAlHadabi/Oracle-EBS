-- Oracle EBS Day 8 - Register Factorial Procedure
-- Student: Abdullah Alhadabi

SET SERVEROUTPUT ON;

-- ============================================================
-- Section 1: Factorial Procedure
-- ============================================================
CREATE OR REPLACE PROCEDURE ABDULLAH_PR_FACT (
    P_NUM IN NUMBER
) AS
    V_FACT NUMBER := 1;
BEGIN
    IF P_NUM < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Number must be zero or greater');
    END IF;

    FOR I IN 1 .. P_NUM LOOP
        V_FACT := V_FACT * I;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Factorial of ' || P_NUM || ' = ' || V_FACT);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
END;
/

-- ============================================================
-- Section 2: Procedure Tests
-- ============================================================
EXEC ABDULLAH_PR_FACT(5);
EXEC ABDULLAH_PR_FACT(0);
EXEC ABDULLAH_PR_FACT(-3);

-- ============================================================
-- Section 3: EBS Concurrent Procedure
-- ============================================================
CREATE OR REPLACE PROCEDURE ABDULLAH_PR_FACT_CONC (
    ERRBUF OUT VARCHAR2,
    RETCODE OUT NUMBER,
    P_NUM IN NUMBER
) AS
    V_FACT NUMBER := 1;
BEGIN
    RETCODE := 0;
    ERRBUF := NULL;

    IF P_NUM < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Number must be zero or greater');
    END IF;

    FOR I IN 1 .. P_NUM LOOP
        V_FACT := V_FACT * I;
    END LOOP;

    FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Factorial of ' || P_NUM || ' = ' || V_FACT);
    FND_FILE.PUT_LINE(FND_FILE.LOG, 'Success: Factorial of ' || P_NUM || ' = ' || V_FACT);
EXCEPTION
    WHEN OTHERS THEN
        RETCODE := 2;
        ERRBUF := SQLERRM;
        FND_FILE.PUT_LINE(FND_FILE.LOG, 'ERROR: ' || SQLERRM);
END;
/

-- ============================================================
-- Section 4: Validation Query
-- ============================================================
SELECT object_name, object_type, status
FROM user_objects
WHERE object_name IN ('ABDULLAH_PR_FACT', 'ABDULLAH_PR_FACT_CONC')
  AND status = 'VALID'
ORDER BY object_name;

-- ============================================================
-- EBS Setup Reference
-- ============================================================
-- Executable: ABDULLAH_PR_FACT_CONC
-- Concurrent Program: ABDULLAH_Factorial
