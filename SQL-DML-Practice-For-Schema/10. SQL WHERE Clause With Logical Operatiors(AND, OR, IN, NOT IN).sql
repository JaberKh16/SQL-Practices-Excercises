use employees;
select *from employees;

select first_name, last_name
from employees
where first_name = 'Chirstian' and last_name = 'Koblick' ; 

select first_name, last_name, gender, emp_no  
from employees
where first_name = 'Chirstian' and gender = 'M' and emp_no <= 10007 ; 

select first_name, last_name, gender
from employees
where (first_name = 'Chirstian' or last_name = 'Koblick') or gender = 'M' ; 

select first_name, last_name, hire_date
from employees
where (hire_date < '1987-06-26') and (first_name = 'Chirstian' or last_name = 'Koblick')  ; 


select first_name, last_name
from employees
where first_name in ('Chirstian',  'Eberhardt', 'Saniya' 'Eckart') ; 

select first_name, last_name
from employees
where first_name  not in ('Chirstian',  'Eberhardt', 'Saniya' 'Eckart') ; 

select first_name, last_name, gender
from employees
where first_name in ('Chirstian',  'Eberhardt', 'Saniya' 'Eckart') and gender = 'M'; 

select first_name, last_name, gender
from employees
where first_name not in ('Chirstian',  'Eberhardt', 'Saniya' 'Eckart') and gender = 'M'; 


select  first_name, last_name, gender
from employees
where first_name in ('Chirstian',  'Eberhardt', 'Saniya' 'Eckart') and gender = 'M' and last_name not in ('Genin', 'Maliniak'); 


