use employees;
select * from salaries;

select emp_no as Employee_ID, salary as "Yearly_salry"
from salaries;

select salary as Salary
from salaries;

select salary *.01 as Weekly
from salaries;

select salary ,
	salary * .01 as Weekly, 
	salary *.01 * 4 as Monthly, 
	salary *.01 * 52 as Yearly, 
    salary *.01 / 7 as Daily,
    salary DIV 3 as Division_Op,
    salary % 3 as Mod_Op,
    salary MOD 3 as Mod_Op
    
from salaries;




