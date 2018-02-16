CREATE OR REPLACE TYPE rect AS OBJECT 
(length number, 
 width number, 
 member function enlarge( inc number) return rect, 
 NOT FINAL member procedure display) NOT FINAL; 
/
CREATE OR REPLACE TYPE BODY rect AS 
   MEMBER FUNCTION enlarge(inc number) return rect IS 
   BEGIN 
      return rect(self.length + inc, self.width + inc); 
   END enlarge;  
   MEMBER PROCEDURE display IS 
   BEGIN 
      dbms_output.put_line('Length: '|| length); 
      dbms_output.put_line('Width: '|| width); 
   END display; 
END; 
/
CREATE OR REPLACE TYPE tabletop UNDER rect
(   
   material varchar2(20), 
   OVERRIDING member procedure display 
) ;
/ 
CREATE OR REPLACE TYPE BODY tabletop AS 
OVERRIDING MEMBER PROCEDURE display IS 
BEGIN 
   dbms_output.put_line('Length: '|| length); 
   dbms_output.put_line('Width: '|| width); 
   dbms_output.put_line('Material: '|| material); 
END display; 
END;
/
DECLARE 
   t1 tabletop; 
   t2 tabletop; 
BEGIN 
   t1:= tabletop(20, 10, 'Wood'); 
   t2 := tabletop(50, 30, 'Steel'); 
   t1.display; 
   t2.display; 
END;
/