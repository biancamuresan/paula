SET serveroutput ON;
CLEAR SCREEN;

DECLARE
  v_num EMPLOYEE.SSN%TYPE := &vv;
BEGIN
  EMPLOY_PACK.FIND_EMP (v_num);
END;
/