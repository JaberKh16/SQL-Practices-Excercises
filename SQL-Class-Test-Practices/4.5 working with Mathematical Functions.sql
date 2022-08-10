use hr_schema;

-- comment 1. show the empolyees details employee_id, first_name, salary 
--            in " 10 thousands 5 hundreds and 12 taka only"
select * from employees;

-- comment 2. For each Job_id, Job_Title and how much greater the max_salary then min_salary in
--            decimal points(show 2 decimal points) 
--            here %greater = [(max_salary - min_salary)*100/min_salary]  
select * from jobs;
select JOB_ID, JOB_TITLE,
round (((MAX_SALARY - MIN_SALARY) * 100) div MIN_SALARY, 2 ) as '%greater'
from jobs;

-- comment 3. show each employees emp_id and yearly total salary with the commission he receieves
--            hint- yearly total salary = [salary * 12 (1 + (commission_pct/100))]
select * from employees;
select EMPLOYEE_ID ,  (SALARY * (12 *(1 + (COMMISSION_PCT / 100)))) as 'Yearly Total Salary'
from employees;


