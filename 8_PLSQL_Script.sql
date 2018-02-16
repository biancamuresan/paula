-- Return how many dependets has each employee 

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
    
  CURSOR cur_dep IS
    SELECT * FROM DEPENDENT;
    
  CURSOR cur_emp IS
    SELECT * FROM EMPLOYEE;
  
  v_no NUMBER;
  
BEGIN
    
    FOR loop_emp IN cur_emp
    LOOP
    
      v_no := 0;
      DBMS_OUTPUT.PUT_LINE('Person: ' || loop_emp.FNAME );
      
      FOR loop_dep IN cur_dep
      LOOP
      
        
      
        IF (loop_emp.SSN = loop_dep.ESSN)
        THEN  
        v_no := v_no + 1;
        END IF;
        

       END LOOP; 
       
       DBMS_OUTPUT.PUT_LINE( ' has ' || v_no || ' dependents ' );
        
    END LOOP;   
    
END;