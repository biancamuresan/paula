SET SERVEROUTPUT ON;

DECLARE
  
  n_pct EMP.COMM%TYPE;
  v_eval varchar2(10);
  n_emp_id EMP.EMPNO%type := &id;
  
BEGIN
  
  SELECT COMM INTO n_pct
  FROM EMP
  WHERE EMPNO = n_emp_id;
  
  CASE n_pct
    WHEN 0 THEN
      v_eval := 'N/A';
    WHEN 10 THEN
      v_eval := 'Too Low';
    WHEN 20 THEN
      v_eval := 'Low';
    WHEN 1400 THEN
      v_eval := 'High';
    ELSE
      v_eval := 'Fair';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('Employee ' || n_emp_id || ' commision ' || n_pct || ' which is ' || v_eval );

END;
/