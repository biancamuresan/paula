-- Create records (structures) with Procedure and a different Subprogram for the records and EXECUTION
SET serveroutput ON;
CLEAR SCREEN;

DECLARE

  TYPE artists IS RECORD
  ( name VARCHAR2(50),
    instrument VARCHAR(50),
    team VARCHAR(100),
    artist_id NUMBER );
    
  artist1 artists;
  artist2 artists;

  PROCEDURE printartist (artist artists) IS
  BEGIN
    dbms_output.put_line('Artist title : '|| artist.name); 
    dbms_output.put_line('Artist instrument : '|| artist.instrument); 
    dbms_output.put_line('Artist subject : '|| artist.team); 
    dbms_output.put_line('Artist artist_id : ' || artist.artist_id);
  END;

BEGIN

  -- Book 1 specification
  artist1.name := 'PLSQL programming for beginers';
  artist1.instrument := 'Rainer';
  artist1.team := 'PLSQL Guide';
  artist1.artist_id := 12345;
  -- Book 2 specification
  artist2.name := 'C programming for beginers';
  artist2.instrument := 'John';
  artist2.team := 'C Guide';
  artist2.artist_id := 23456;
  
  printartist(artist1);
  printartist(artist2);
  
END;
/