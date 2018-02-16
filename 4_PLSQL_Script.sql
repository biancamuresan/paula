-- Return the Department where 'Franklin' works



CREATE OR REPLACE PROCEDURE first_procedure

(v_ename IN EMPLOYEE.FNAME%TYPE)
IS

  CURSOR cur_dep IS
    SELECT * FROM DEPARTMENT;
    
  v_dno EMPLOYEE.DNO%TYPE;
  
BEGIN
    
    DBMS_OUTPUT.PUT_LINE( v_ename);
    
    FOR loop_dep IN cur_dep
    LOOP
    
    SELECT e.DNO 
    INTO v_dno
    FROM EMPLOYEE e
    WHERE e.FNAME LIKE v_ename
    AND ROWNUM = 1;
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Department: ' || v_dno );
    
END;