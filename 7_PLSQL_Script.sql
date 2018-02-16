-- Return all the dependets of the employee 

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
    
  CURSOR cur_dep IS
    SELECT * FROM DEPENDENT;
  
  v_ename EMPLOYEE.FNAME%TYPE;
  v_dname DEPENDENT.DEPENDENT_NAME%TYPE;
  v_drel DEPENDENT.RELATIONSHIP%TYPE;
  
BEGIN
    
    FOR loop_dep IN cur_dep
    LOOP
    
        DBMS_OUTPUT.PUT_LINE('Person: ' || loop_dep.DEPENDENT_NAME );
      
        SELECT e.FNAME, loop_dep.DEPENDENT_NAME, loop_dep.RELATIONSHIP
        INTO v_ename, v_dname, v_drel
        FROM EMPLOYEE e
        WHERE loop_dep.ESSN = e.SSN;
       -- AND ROWNUM = 1;   
        
        DBMS_OUTPUT.PUT_LINE('Employee: ' || v_ename || ' has ' || v_dname || ' as a ' || v_drel );
        
      
    END LOOP;   
    
END;