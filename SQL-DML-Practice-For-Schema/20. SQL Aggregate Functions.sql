use employees;
select * from salaries;

select date_format(from_date, '%Y') as "Salary_Year" ,count(*) as "Total_Records", sum(salary) as "Total_Salary" 
from salaries
group by Salary_Year;

select count(*), sum(salary) as "Total_Salary_Given", max(salary) as "MAX_Salary", min(salary) as "MIN_Salary", emp_no, salary
from salaries;

select  sum(salary) as "Total_Salary" , avg(salary) as "Average_Salary"
from salaries;

select date_format(from_date, '%Y') as Salary_Year, AVG(salary) as "Average_Salary", count(*) as "Total_Records",
SUM(Salary) as "Total_Salary", MAX(salary) as "Max_Salary", MIN(salary) as "MIn_Salary"
from salaries
group by Salary_Year;

select Average_Salary, (Total_Salary / Total_Records) as Calculated_Average
from (select date_format(from_date, '%Y') as Salary_Year, AVG(salary) as "Average_Salary", count(*) as "Total_Records",
SUM(Salary) as "Total_Salary"
from salaries
group by Salary_Year) as Sub_select;