
CREATE OR REPLACE type obj_supertype
IS
  object
  (
    obj_emp_id   VARCHAR2(30),
    obj_emp_name VARCHAR2(30),
    map member FUNCTION func_super_map RETURN NUMBER,
    member FUNCTION func_super_print RETURN VARCHAR2) NOT final;
  /
  CREATE OR REPLACE type body obj_supertype
IS
  map member FUNCTION func_super_map
  RETURN NUMBER
IS
BEGIN
  RETURN obj_emp_id;
END;
member FUNCTION func_super_print
  RETURN VARCHAR2
IS
BEGIN
  RETURN 'The Employee details for the ID '||obj_emp_id||' is Name: '||
  obj_emp_name;
END;
END;

/
DECLARE
  l_obj_supertype obj_supertype:=obj_supertype(857, 'Thomas King');
BEGIN
  dbms_output.put_line(l_obj_supertype.func_super_print);
END;
/