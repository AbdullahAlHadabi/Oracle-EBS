-- Task 3: Create procedure and function using SQLPlus
-- Procedure Example (SQL*Plus)
CREATE OR REPLACE PROCEDURE GET_EMP_SAL (
    P_EMPNO IN NUMBER
) IS
    V_SAL NUMBER;
BEGIN
    SELECT SAL INTO V_SAL FROM EMP WHERE EMPNO = P_EMPNO;
    DBMS_OUTPUT.PUT_LINE('SALARY = ' || V_SAL);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE NOT FOUND!');
END;
/

-- Function Call Example (SQL*Plus)
-- Note: function body not provided by user; keeping call as provided
SELECT ANIL_FN_TEST FROM DUAL;
