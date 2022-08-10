use hr_schema;
select * from employees;
select distinct MANAGER_ID
from employees;

select distinct JOB_ID
from employees;

select distinct COUNTRY_ID
from locations;

select distinct Loc.COUNTRY_ID, Emp.DEPARTMENT_ID
from employees as Emp JOIN departments as Dept
on Emp.DEPARTMENT_ID = Dept.DEPARTMENT_ID
JOIN locations as Loc
on Loc.LOCATION_ID = Dept.LOCATION_ID;



