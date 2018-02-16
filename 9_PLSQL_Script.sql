-- Return the age of each Person

SET serveroutput ON;
CLEAR SCREEN;

DECLARE
  
  CURSOR cur_emp IS
    SELECT * FROM EMPLOYEE;
  
  v_no NUMBER;
  
BEGIN
     
    FOR loop_emp IN cur_emp
    LOOP
    
    v_no := extract(year from numtoyminterval(months_between(trunc(sysdate),loop_emp.BDATE),'month')); 
    DBMS_OUTPUT.PUT_LINE( 'Person' || loop_emp.FNAME || ' is ' || v_no || ' years old ' );
    
    END LOOP;

END;