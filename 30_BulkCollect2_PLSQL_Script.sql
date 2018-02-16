-- BULK COLLECT: FETCH INTO

SET SERVEROUTPUT ON;

DECLARE
  
  CURSOR exp_cur IS
  SELECT FNAME FROM EMPLOYEE;

  TYPE t_fName IS TABLE OF EMPLOYEE.FNAME%TYPE;
  fname t_fName;
  
BEGIN

  OPEN exp_cur;
  LOOP
    FETCH exp_cur BULK COLLECT INTO fname;
    EXIT WHEN fname.COUNT = 0;
    FOR idx IN fname.FIRST .. fname.LAST
    LOOP
  
      DBMS_OUTPUT.PUT_LINE( idx || ' - ' || fname(idx) );
  
    END LOOP;
  END LOOP;
  
  CLOSE exp_cur;

END;
/
