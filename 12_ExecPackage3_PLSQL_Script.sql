-- Execute updateSalary and listEmployee

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
  v_ssn EMPLOYEE.SSN%TYPE := &ssn;
  v_factor FLOAT := &factor;
BEGIN
  EMP_OP.LISTEMPLOYEE;
  EMP_OP.UPDATESALARY (v_ssn, v_factor);
   COMMIT ;
END;
/