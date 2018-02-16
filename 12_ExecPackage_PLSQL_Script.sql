SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  ev_fname EMPLOYEE.FNAME%TYPE := '&fname';
  ev_minit EMPLOYEE.MINIT%TYPE := '&minit';
  ev_lname EMPLOYEE.LNAME%TYPE := '&lname';
  ev_ssn EMPLOYEE.SSN%TYPE := &ssn;
  ev_bdate EMPLOYEE.BDATE%TYPE := '&bdate';
  ev_address EMPLOYEE.ADDRESS%TYPE := '&address';
  ev_sex EMPLOYEE.SEX%TYPE := '&sex';
  ev_salary EMPLOYEE.SALARY%TYPE := &salary;
  ev_superssn EMPLOYEE.SUPERSSN%TYPE := &superssn;
  ev_dno EMPLOYEE.DNO%TYPE := &dno; 
BEGIN
  emp_op.addEmployee(ev_fname, ev_minit, ev_lname, ev_ssn, ev_bdate, ev_address, ev_sex, ev_salary, ev_superssn, ev_dno);
  COMMIT;
END;
/