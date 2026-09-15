-- Task 1: Factorial Calculation with Exception Handling
SET SERVEROUTPUT ON;

DECLARE
   N NUMBER := '&INPUT_NUMBER';
   F NUMBER := 1;
BEGIN
   IF N < 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Factorial is not defined for negative numbers.');
   END IF;

   FOR I IN 1..N LOOP
      F := F * I;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('FACTORIAL OF ' || N || ' = ' || F);

EXCEPTION
   WHEN VALUE_ERROR THEN
      DBMS_OUTPUT.PUT_LINE('ERROR: Invalid input or number is too large!');
   WHEN OTHERS THEN
      IF SQLCODE = -20001 THEN
         DBMS_OUTPUT.PUT_LINE('ERROR: Please enter a non-negative number!');
      ELSE
         DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERROR: ' || SQLERRM);
      END IF;
END;
/