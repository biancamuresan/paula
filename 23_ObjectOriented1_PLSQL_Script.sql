-- Create an Object Oriented Type

SET serveroutput ON;
CLEAR SCREEN;

CREATE OR REPLACE TYPE address AS OBJECT
(house_no varchar2(10),
 street varchar2(30),
 city varchar2(20),
 state varchar2(10),
 pincode varchar2(10)
);
/
DECLARE 

  residence address;

BEGIN

  residence := address ('103A', 'Albrecht.Dürer', 'Stuttgart', 'Deutsch', '71065');
  DBMS_OUTPUT.PUT_LINE( 'House No: ' || residence.house_no );
  DBMS_OUTPUT.PUT_LINE( 'Street: ' || residence.street );
  DBMS_OUTPUT.PUT( 'City: ' || residence.city );
  DBMS_OUTPUT.PUT_LINE( 'State: ' || residence.state );
  DBMS_OUTPUT.PUT_LINE( 'Pincode: ' || residence.pincode );

END;
/
