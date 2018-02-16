CREATE OR REPLACE FUNCTION calc_comm_percent(p_salary IN number, p_comm IN number) RETURN number IS
BEGIN
  RETURN p_comm/p_salary;
END;