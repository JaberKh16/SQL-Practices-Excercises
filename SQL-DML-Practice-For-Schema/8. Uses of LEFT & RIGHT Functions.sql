use employees;
select right("Jaber", 0) as Right_Char ;
select right("Jaber", 1) as Right_Char ;
select right("Jaber", 2) as Right_Char ;
select right("Jaber", 3) as Right_Char ;

select left("Ayesha", 0) as Left_Char;
select left("Ayesha", 1) as Left_Char;
select left("Ayesha", 2) as Left_Char;
select left("Ayesha", 4) as Left_Char;

select *from employees;
select first_name, last_name, left(first_name, 1) , left(last_name, 1)
from employees;

select first_name, last_name, concat( left(first_name, 1), left(last_name, 1)) as Initails_Name
from employees;
