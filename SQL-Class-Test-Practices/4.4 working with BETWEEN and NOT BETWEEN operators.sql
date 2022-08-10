use hr_schema;

-- comment 1. show the departments whose location id is within the range 1000 to 2000
select * from departments;
select * from departments
where LOCATION_ID between 1000 and 2000;

-- comment 2. show the employees whose salary is within the range 10000 to 20000
select * from employees;
select * from employees
where SALARY between 10000 and 20000;

-- comment 3. show the employees whose hire_date is within the range '1987-01-01' to '1987-06-30'
select * from employees
where HIRE_DATE between '1987-01-01' and '1987-06-30' ;

-- comment 4. show the job details where the difference between max_salary and min_salary within
--            the range 5000 to 10000
select * from jobs;
select * from jobs
where (MAX_SALARY-MIN_SALARY) between 5000 and 10000;

-- comment 5. show the job_history details where the end_date is within '1998-12-01' to '1998-12-31'
select * from job_history;
select * from job_history
where END_DATE between '1998-12-01' and '1998-12-31';

-- comment 6, show the employees details whose department_id is outside the range 50 to 60
select * from employees;
select * from employees
where DEPARTMENT_ID not between 50 and 60;

