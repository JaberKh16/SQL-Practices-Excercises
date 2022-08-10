use hr_schema;

select * from employees;

select concat(FIRST_NAME, " ", reverse(FIRST_NAME)) as short_name
from  employees
where reverse(FIRST_NAME) = reverse(LAST_NAME);

select EMPLOYEE_ID, concat( EMAIL, "@gmail.com") as email
from employees;

# select FIRST_NAME, PHONE_NUMBER, RPAD(substr(PHONE_NUMBER, -1),
# from employees;

select * from employees;
select EMPLOYEE_ID, EMAIL, RPAD(concat(FIRST_NAME, " ", LAST_NAME), 20, "*") as "Full_Name"
from employees
where length(FIRST_NAME + LAST_NAME) <=20;


