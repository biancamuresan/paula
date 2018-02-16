-- List 2 arrays of 2 types

SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  type namesarray IS VARRAY(5) OF VARCHAR(10);
  type grades IS VARRAY(5) OF INTEGER;
  names namesarray;
  marks grades;
  total integer;
  
BEGIN
  names := namesarray ('Krista', 'Miriam', 'Iulia', 'Paula', 'Bianca');
  marks := grades (98, 98, 70, 50, 67);
  total := names.count;
  DBMS_OUTPUT.PUT_LINE('Total ' || total || ' Students');
  
  FOR i in 1 .. total LOOP
    
    DBMS_OUTPUT.PUT_LINE( 'Students: ' || names(i) || ' Marks: ' || marks(i));
    
  END LOOP;
END;
  