-- COMMIT Transaction 

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (12, 'Cristian', 'Engineur', 7698, '09.12.99', 7000, 20, 50);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (13, 'Hannah', 'Musician', 7698, '09.11.99', 4000, 20, 40);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (14, 'Maria', 'Schneide', 7698, '05.12.99', 2300, 10, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (15, 'Nikky', 'Schrein', 7782, '20.12.99', 3000, 20, 50);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO )
VALUES (16, 'Dana', 'Buchhalt', 7782, '10.12.99', 4500, 10, 10);

COMMIT;