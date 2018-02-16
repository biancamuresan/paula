CREATE OR REPLACE PACKAGE employ_pack AS 
   PROCEDURE find_emp (v_ssn EMPLOYEE.SSN%type); 
END employ_pack;
/
CREATE OR REPLACE PACKAGE BODY employ_pack AS  
   
   PROCEDURE find_emp (v_ssn EMPLOYEE.SSN%type) IS 
   v_emname EMPLOYEE.FNAME%TYPE; 
   BEGIN 
      dbms_output.put_line('SSN: '|| v_ssn);
      SELECT e.FNAME INTO v_emname 
      FROM EMPLOYEE e 
      WHERE e.SSN = v_ssn
      AND ROWNUM = 1; 
      dbms_output.put_line('Employee Name: '|| v_emname); 
   END find_emp; 
END employ_pack; 
/