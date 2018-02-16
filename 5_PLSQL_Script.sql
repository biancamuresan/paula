-- Return the department where each employee works - double LOOP

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
    
  CURSOR cur_dep IS
    SELECT * FROM DEPARTMENT;
    
  CURSOR cur_emp IS
    SELECT * FROM EMPLOYEE;
  
BEGIN
    
    FOR loop_emp IN cur_emp
    LOOP
    
        DBMS_OUTPUT.PUT_LINE('Employee: ' || loop_emp.FNAME );
        
      FOR loop_dep IN cur_dep
      LOOP 
      
        IF (loop_emp.DNO = loop_dep.DNUMBER)      
        THEN DBMS_OUTPUT.PUT_LINE('Department: ' || loop_dep.DNAME );
        END IF;
      
      END LOOP;    
      
    END LOOP;   
    
END;