-- Return all the Employees indexed by an integer 'counter' using Collection

SET serveroutput ON;
CLEAR SCREEN;

DECLARE 

   CURSOR c_emp is 
      select ENAME from EMP; 

   TYPE c_list IS TABLE of EMP.ENAME%type INDEX BY binary_integer; 
   name_list c_list; 
   
   counter integer :=0; 
   
BEGIN 

   FOR n IN c_emp
   LOOP
   
      counter := counter +1; 
      name_list(counter) := n.ENAME; 
      dbms_output.put_line( 'Employee(' || counter || '): ' || name_list(counter) ); 
       
   END LOOP; 
END; 
/ 