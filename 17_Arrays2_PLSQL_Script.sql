-- List all the names of the EMP table inserted in a array

SET serveroutput ON;
CLEAR SCREEN;

DECLARE 
   CURSOR c_emp is 
    SELECT  ENAME FROM EMP; 
    
   type c_list is varray (10) of EMP.ENAME%type; 
   name_list c_list := c_list(); 
   
   counter integer :=0; 
   
BEGIN 

   FOR n IN c_emp
   LOOP 
   
      counter := counter + 1; 
      name_list.extend; 
      name_list(counter)  := n.ENAME; 
      dbms_output.put_line('Employee (' || counter || '): ' || name_list(counter)); 
      
   END LOOP; 
   
END; 
/ 