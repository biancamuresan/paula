-- ROLLBACK TO SOME POINNT AND COMMIT TRANSACTIONS

SET serveroutput ON;
CLEAR SCREEN;

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (17, 'Danuta', 'Buchhalt', 7782, '10.10.99', 4000, 10, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (18, 'Danu', 'Buchhalt', 7782, '10.10.99', 4000, 10, 20);
SAVEPOINT sav1;
  
UPDATE EMP 
SET SAL = SAL + 1000; 
ROLLBACK TO sav1;
  
UPDATE EMP 
SET SAL = SAL + 1000 
WHERE EMPNO = 17; 

UPDATE EMP 
SET SAL = SAL + 1000 
WHERE EMPNO = 18; 

COMMIT;