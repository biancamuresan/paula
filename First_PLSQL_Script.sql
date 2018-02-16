SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  CURSOR cur_emp IS
    SELECT * FROM EMPLOYEE;
  
  v_pname PROJECT.PNAME%TYPE;
  
BEGIN

  FOR loop_emp IN cur_emp
  LOOP 
    
    SELECT p.PNAME 
    INTO v_pname 
    FROM PROJECT p
    JOIN WORKS_ON w ON
    p.PNUMBER = w.PNO
    JOIN EMPLOYEE e ON
    w.ESSN = e.SSN
    WHERE e.FNAME = loop_emp.FNAME
    AND ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('Project name: ' || v_pname || ' from ' || loop_emp.FNAME);
       
  END LOOP;
  
END;