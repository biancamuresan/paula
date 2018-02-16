-- Execute deleteEmployee

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
  v_ssn EMPLOYEE.SSN%TYPE := &ssn;
BEGIN
  EMP_OP.DELETEEMPLOYEE (v_ssn);
  COMMIT ;
END;
/