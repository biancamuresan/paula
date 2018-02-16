-- BULK COLLECT: FWTCH INTO LIMIT

SET SERVEROUTPUT ON;

DECLARE 

  CURSOR exp_cur IS
  SELECT FNAME FROM PAULA.EMPLOYEE;

  TYPE t_fName IS TABLE OF PAULA.EMPLOYEE.FNAME%TYPE;
  fname t_fName;
  
BEGIN

  OPEN exp_cur;
    FETCH exp_cur BULK COLLECT INTO fname LIMIT 5;
  CLOSE exp_cur;
  
  FOR idx IN 1..fname.COUNT
  LOOP
    DBMS_OUTPUT.PUT_LINE( idx || ' ' || fname(idx) );
  END LOOP;
END;
/