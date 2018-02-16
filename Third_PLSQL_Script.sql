-- Return the Department in wich each employee works - JOIN

SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  CURSOR cur_emp IS
    SELECT * FROM EMPLOYEE;
    
  v_dname DEPARTMENT.DNAME%TYPE;
  
BEGIN
  
  FOR loop_emp IN cur_emp
  LOOP
    
    DBMS_OUTPUT.PUT_LINE('Employee: ' || loop_emp.FNAME);
    
    SELECT d.DNAME
      INTO v_dname
    FROM DEPARTMENT d
    WHERE
      d.MGRSSN = loop_emp.SUPERSSN
    AND ROWNUM = 1 ;
  
    
    DBMS_OUTPUT.PUT_LINE('Department: ' || v_dname);
    
  END LOOP;
  
END;