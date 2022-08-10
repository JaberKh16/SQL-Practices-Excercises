use employees;
select first_name , last_name, concat(first_name, ' || ' ,last_name) as  'FULL NAME'
from employees;

select count(*) from employees;

select count(*) from departments as Total_dept;
select  dept_no, dept_name
from departments;

select * from dept_emp;

select emp_no, dept_no
from dept_emp;

select * from departments;
select count(*)  as 'total_dept'
from departments;


select dept_no as Dept_NO , dept_name as Dept_Name
from departments;

select concat(dept_no , '||||',   dept_name  )  as 'Full_Dept_Info'
from departments;


