-- Return all the employees in each department and the number of employees in each department
SET AUTOTRACE ON ;
SET serveroutput ON;
CLEAR SCREEN;
 

DECLARE
   
  
  CURSOR cur_dep IS
    SELECT * FROM paula.DEPARTMENT;
    
  CURSOR cur_emp IS
    SELECT * FROM paula.EMPLOYEE;
      
  v_no NUMBER;
  
BEGIN
    
    
    FOR loop_dep IN cur_dep
    LOOP 
    
        v_no := 0;
        DBMS_OUTPUT.PUT_LINE('Department: ' || loop_dep.DNAME );
       
        FOR loop_emp IN cur_emp
        LOOP
      
        IF (loop_emp.DNO = loop_dep.DNUMBER)      
        THEN 
          
          DBMS_OUTPUT.PUT_LINE('Employee: ' || loop_emp.FNAME );
          v_no := v_no + 1;
          
        END IF;
      
        END LOOP;    
      
        DBMS_OUTPUT.PUT_LINE('Number of employees: ' || v_no );
        
    END LOOP;   
    
END;