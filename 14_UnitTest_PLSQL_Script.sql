CREATE OR REPLACE PACKAGE test_calc_comm_percent AS
-- PL/Unit tests are implemented as packages

PROCEDURE t_call_function;
-- unit tests are public procedures that have no parameters
-- their names must begin with t_

PROCEDURE t_zero_salary;
PROCEDURE t_zero_comm;


END;
/

CREATE OR REPLACE PACKAGE BODY test_calc_comm_percent AS

PROCEDURE t_call_function IS
-- we write our test logic in the package body
BEGIN
  -- our call to assert equals is taking 3 parameters.  
  -- The first is the value we expect, the second is the actual value (our function result)
  -- the third is the optional error message to supply if the test fails.
  plunit.assert_equals(0.10, calc_comm_percent(1000, 100), 'Commission percent is wrong');
END;

PROCEDURE t_zero_salary IS
BEGIN
  -- we'll assume that with no salary, the commission makes up 100% of the salary
  plunit.assert_equals(1, calc_comm_percent(0, 100), 'Commission percent is wrong');
END;

PROCEDURE t_zero_comm IS
BEGIN
  -- with no commission, the percentage should be zero
  plunit.assert_equals(0, calc_comm_percent(1000, 0), 'Commission percent is wrong');
END;

END;
/