-- Return all the Employees indexed by an integer 'counter' using Collection

SET serveroutput ON;
CLEAR SCREEN

DECLARE
  TYPE names_table IS TABLE OF VARCHAR2(10);
  TYPE grades IS TABLE OF INTEGER;
  names names_table;
  marks grades;
  total integer;
  
BEGIN

  names := names_table ('Franklin', 'Ana', 'Paula', 'Fred', 'Ahmed');
  marks := grades (98, 97, 50, 68, 56);
  total := names_table.count;
  DBMS_OUTPUT.PUT_LINE(' Total ' || total || ' Students');
  
  FOR i IN 1 .. total v
  LOOP
  
    DBMS_OUTPUT.PUT_LINE(' ');
  
  END LOOP;
  

END;
  