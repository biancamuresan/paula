-- Create records (structures) with Procedure and a different Subprogram for the records and EXECUTION
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

  PROCEDURE printbook (book books) IS
  BEGIN
    dbms_output.put_line('Book title : '|| book.title); 
    dbms_output.put_line('Book author : '|| book.author); 
    dbms_output.put_line('Book subject : '|| book.subject); 
    dbms_output.put_line('Book book_id : ' || book.book_id);
  END;

BEGIN

  -- Book 1 specification
  book1.title := 'PLSQL programming for beginers';
  book1.author := 'Rainer';
  book1.subject := 'PLSQL Guide';
  book1.book_id := 12345;
  -- Book 2 specification
  book2.title := 'C programming for beginers';
  book2.author := 'John';
  book2.subject := 'C Guide';
  book2.book_id := 23456;
  
  printbook(book1);
  printbook(book2);
  
END;
/