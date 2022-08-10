use employees;
select * from dept_emp;

select distinct emp_no as Employee_NO 
from dept_emp;


select count(distinct emp_no ) as Employee_NO 
from dept_emp;

select distinct emp_no as EMP_NO , dept_no as DEPT_NO 
from dept_emp;

select count(distinct emp_no )as EMP_NO ,  dept_no as DEPT_NO 
from dept_emp
where dept_no = 'd005';

select distinctrow dept_no as "DISTINCT_ROW"
from dept_emp;

select count(distinctrow dept_no) as "DISTINCT_ROW"
from dept_emp
where dept_no = 'd005';

select distinctrow emp_no as "DISTINCT_Row"
from dept_emp;

select count(distinctrow emp_no ) as "DISTINCT_ROWS"
from dept_emp
where emp_no = 10058;

use employees;
select * from employees;
select count( distinct (first_name)) as First_Name
from employees
where gender = 'M';



