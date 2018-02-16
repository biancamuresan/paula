-- Creating METHODS (MAP and ORDER) for an OBJECT 
-- serveroutput ON;
--CLEAR SCREEN;

CREATE OR REPLACE TYPE rectangle AS OBJECT
  (lengthh NUMBER,
  width NUMBER,
  MEMBER FUNCTION enlarge ( inc number ) RETURN rectangle,
  MEMBER PROCEDURE display,
  MAP MEMBER FUNCTION measure RETURN NUMBER
  );
/
-- Creating the BODY
CREATE OR REPLACE TYPE BODY rectangle AS

  MEMBER FUNCTION enlarge ( inc number ) RETURN rectangle IS
  BEGIN
  
    RETURN rectangle (SELF.lengthh + inc, SELF.width + inc);
  
  END enlarge;
  
  MEMBER PROCEDURE display IS
  BEGIN
  
    DBMS_OUTPUT.PUT_LINE('Length: '|| lengthh); 
    DBMS_OUTPUT.PUT_LINE('Width: '|| width); 
    
  END display;
  
  MAP MEMBER FUNCTION measure RETURN NUMBER IS
  BEGIN
  
  RETURN ( sqrt(lengthh * lengthh + width * width) );
    
  END measure;
  
  
END;
/
DECLARE 
   r1 rectangle; 
   r2 rectangle; 
   r3 rectangle; 
   inc_factor NUMBER := 5; 
   c_return NUMBER := 0;
BEGIN 
   r1 := rectangle(3, 4); 
   r2 := rectangle(5, 7); 
   r3 := r1.enlarge(inc_factor); 
   r3.display;  
  
  -- Testing MAP FUNCTION measure1  
  DBMS_OUTPUT.PUT('Testing MAP METHOD 1');
   IF (r1.measure > r2.measure) THEN -- calling measure function 
      r1.display; 
   ELSE 
      r2.display; 
   END IF; 
   
END; 

/