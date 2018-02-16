SET AUTOTRACE ON;
SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  CURSOR cur_emp IS
    SELECT * FROM PAULA.EMPLOYEE;
  CURSOR cur_work IS
    SELECT * FROM PAULA.WORKS_ON;
  CURSOR cur_proj IS
    SELECT * FROM   PAULA.PROJECT;
  
BEGIN

  FOR loop_emp IN cur_emp
  LOOP 
      
    DBMS_OUTPUT.PUT_LINE('Employee name: ' || loop_emp.FNAME);
    
    FOR loop_works IN cur_work
    LOOP 
    
      FOR loop_proj IN cur_proj
      LOOP 

        IF (loop_works.PNO = loop_proj.PNUMBER)
        THEN
          IF (loop_works.ESSN = loop_emp.SSN)
          THEN
            DBMS_OUTPUT.PUT_LINE('Project name: ' || loop_proj.PNAME);
          END IF;
        END IF;
       
      END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('-------');
  END LOOP;
  
END;