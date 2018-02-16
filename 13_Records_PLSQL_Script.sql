-- Create records (structures)
SET serveroutput ON;
CLEAR SCREEN;


DECLARE

  TYPE books IS RECORD
  ( title VARCHAR2(50),
    author VARCHAR(50),
    subject VARCHAR(100),
    book_id NUMBER );
    
  book1 books;
  book2 books;
  
BEGIN

  -- Book 1 specification
  book1.title := 'PLSQL programming for beginers';
  book1.author := 'Rainer';
  book1.subject := 'PLSQL Guide';
  book1.book_id := 12345;
  -- Book 2 specification
  book1.title := 'C programming for beginers';
  book1.author := 'John';
  book1.subject := 'C Guide';
  book1.book_id := 23456;
  
  -- Print book 1 record
  dbms_output.put_line('Book 1 title : '|| book1.title); 
  dbms_output.put_line('Book 1 author : '|| book1.author); 
  dbms_output.put_line('Book 1 subject : '|| book1.subject); 
  dbms_output.put_line('Book 1 book_id : ' || book1.book_id); 
  
  -- Print book 2 record
  dbms_output.put_line('Book 2 title : '|| book2.title); 
  dbms_output.put_line('Book 2 author : '|| book2.author); 
  dbms_output.put_line('Book 2 subject : '|| book2.subject); 
  dbms_output.put_line('Book 2 book_id : ' || book2.book_id); 
  
END;