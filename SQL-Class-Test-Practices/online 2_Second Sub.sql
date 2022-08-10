
-- 1.
SELECT Emp2.MANAGER_ID, COUNT(Emp1.EMPLOYEE_ID) as "Total_No_Emp"
FROM employees as Emp1 
JOIN employees as Emp2
ON Emp1.MANAGER_ID = Emp2.MANAGER_ID
GROUP BY Emp1.MANAGER_ID


-- 2. 
SELECT Emp2.EMPLOYEE_ID, Emp1.SALARY as "First_Employee_Sal", Emp2.SALARY as "Second_Employee_Sal"
FROM employees as Emp1 
JOIN employees as Emp2
ON Emp1.MANAGER_ID = Emp2.MANAGER_ID
WHERE Emp1.SALARY < Emp2.SALARY
GROUP BY Emp1.EMPLOYEE_ID;

--4

SELECT LAST_NAME, JOB_ID, SALARY
FROM employees
WHERE JOB_ID <> 'IT_PROG'
AND SALARY < ALL
(
	SELECT SALARY
	FROM employees
	WHERE JOB_ID = 'IT_PROG'
) ;





--3

SELECT Emp1.LAST_NAME, Emp2.SALARY,  AVG(Emp1.SALARY) as "First_Employee_Sal", Emp2.SALARY as "Second_Employee_Sal"
FROM employees as Emp1 
JOIN employees as Emp2
ON Emp1.MANAGER_ID = Emp2.MANAGER_ID
WHERE Emp1.SALARY
( 
    SELECT *
    FROM employees
    WHERE SALARY IN ("SALES) ;

)



