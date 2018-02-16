CREATE OR REPLACE PACKAGE emp_op AS 
  -- Adds employees
  PROCEDURE addEmployee(e_fname EMPLOYEE.FNAME%TYPE,
      e_minit EMPLOYEE.MINIT%TYPE,
      e_lname EMPLOYEE.LNAME%TYPE,
      e_ssn EMPLOYEE.SSN%TYPE,
      e_bdate EMPLOYEE.BDATE%TYPE,
      e_address EMPLOYEE.ADDRESS%TYPE,
      e_sex EMPLOYEE.SEX%TYPE,
      e_salary EMPLOYEE.SALARY%TYPE,
      e_superssn EMPLOYEE.SUPERSSN%TYPE,
      e_dno EMPLOYEE.DNO%TYPE);
  -- Delete a employee based on his ssn and his firstname
  PROCEDURE deleteEmployee(e_ssn EMPLOYEE.SSN%TYPE);
  -- Update the salary with a factor
  PROCEDURE updateSalary(e_ssn EMPLOYEE.SSN%TYPE,
      factor FLOAT);
  -- List all the employees
  PROCEDURE listEmployee;
END emp_op;
/
CREATE OR REPLACE PACKAGE BODY emp_op AS
  PROCEDURE addEmployee(e_fname EMPLOYEE.FNAME%TYPE,
      e_minit EMPLOYEE.MINIT%TYPE,
      e_lname EMPLOYEE.LNAME%TYPE,
      e_ssn EMPLOYEE.SSN%TYPE,
      e_bdate EMPLOYEE.BDATE%TYPE,
      e_address EMPLOYEE.ADDRESS%TYPE,
      e_sex EMPLOYEE.SEX%TYPE,
      e_salary EMPLOYEE.SALARY%TYPE,
      e_superssn EMPLOYEE.SUPERSSN%TYPE,
      e_dno EMPLOYEE.DNO%TYPE) 
  IS
  BEGIN
  
    DBMS_OUTPUT.PUT_LINE(e_fname || e_sex || e_bdate);
    INSERT INTO EMPLOYEE (FNAME, MINIT, LNAME, SSN, BDATE, ADDRESS, SEX, SALARY, SUPERSSN, DNO)
    VALUES(e_fname, e_minit, e_lname, e_ssn, e_bdate, e_address, e_sex, e_salary, e_superssn, e_dno);
    
  END addEmployee;
  
  PROCEDURE deleteEmployee(e_ssn EMPLOYEE.SSN%TYPE)
  IS
  BEGIN
  
    DELETE FROM EMPLOYEE e
    WHERE e.SSN = e_ssn;
  
  END deleteEmployee;
  
  PROCEDURE updateSalary(e_ssn EMPLOYEE.SSN%TYPE,
      factor FLOAT)
  IS
  BEGIN
  
    UPDATE EMPLOYEE e
    SET e.salary = e.salary * factor
    WHERE e.ssn = e_ssn;
  
  END updateSalary;
  
  PROCEDURE listEmployee IS
  CURSOR cur_emp is 
    SELECT * FROM EMPLOYEE; 
   counter integer :=0; 
   BEGIN
   
    FOR loop_emp IN cur_emp LOOP 
    counter := counter +1;  
    dbms_output.put_line('Employee(' ||counter|| ')'||loop_emp.FNAME); 
    END LOOP;
    
   END listEmployee;
   
END emp_op;
/