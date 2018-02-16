SET serveroutput ON;
CLEAR SCREEN;

CREATE OR REPLACE TRIGGER display_salary_changes
BEFORE DELETE OR INSERT OR UPDATE 
ON EMP
FOR EACH ROW
WHEN (NEW.EMPNO > 0)
DECLARE
  sal_diff number;
BEGIN
  sal_diff := :NEW.SAL - :OLD.SAL;
  DBMS_OUTPUT.PUT_LINE('Old salary: ' || :OLD.SAL);
  DBMS_OUTPUT.PUT_LINE('New salary: ' || :NEW.SAL);
  DBMS_OUTPUT.PUT_LINE('Salary difference: ' || sal_diff);
END;
/