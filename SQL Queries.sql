--
--SET AUTOTRACE ON EXPLAIN;
--SET AUTOTRACE TRACEONLY ;
SET AUTOTRACE ON;

SELECT * FROM PAULA.WORKS_ON;
SELECT * FROM PAULA.PROJECT;
SELECT * FROM PAULA.EMPLOYEE;

-- 4. Return all the employes from the Project 10

SELECT * FROM PAULA.EMPLOYEE e
JOIN PAULA.WORKS_ON w ON
w.ESSN = e.SSN
WHERE w.PNO = 10;

-- 5. Return all the projects, wich John works for
EXPLAIN PLAN FOR
SELECT p.PNAME FROM PAULA.PROJECT p
JOIN PAULA.WORKS_ON w ON
w.ESSN = (SELECT e.SSN FROM PAULA.EMPLOYEE e
WHERE e.FNAME LIKE 'John')
WHERE p.PNUMBER = w.PNO;

-- 6. Return all the projects, wich John works for - 2 JOIN
SELECT p.PNAME FROM PROJECT p
JOIN WORKS_ON w ON
p.PNUMBER = w.PNO
JOIN EMPLOYEE e ON
w.ESSN = e.SSN
WHERE e.FNAME LIKE 'Franklin';

SELECT * FROM PAULA.DEPENDENT;
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_LOCATIONS;
SELECT * FROM EMPLOYEE;

-- Return all the employees who work on 'Research' Department
SELECT * FROM EMPLOYEE e
JOIN DEPARTMENT d ON
d.MGRSSN = e.SUPERSSN
WHERE d.DNAME LIKE 'Research';

-- Return all the dependets of the employee

SELECT * FROM DEPENDENT;
SELECT * FROM EMPLOYEE;

SELECT e.FNAME, dp.DEPENDENT_NAME, dp.RELATIONSHIP FROM DEPENDENT dp
JOIN EMPLOYEE e ON
e.SSN = dp.ESSN;

-- Return the age of each Person

SELECT * FROM EMPLOYEE;

SELECT
extract(year from numtoyminterval(months_between(trunc(sysdate),e.BDATE),'month'))
FROM EMPLOYEE e;
