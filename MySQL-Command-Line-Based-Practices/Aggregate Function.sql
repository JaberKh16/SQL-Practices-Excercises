-- SQL Aggregate Fuctions

-- using COUNT( [Distinct], column1, column2, ...) Functions
select COUNT(author_fname) as "First_Name"
from books;

-- Exc-1 count all unique author_fname
select COUNT(DISTINCT author_fname) as "First_Name"
from books;

-- Exc-2 count all unique author's name means (author_fname and author_lname as Full_Name)
select COUNT(DISTINCT author_lname, author_fname) as "Full_Name"
from books;

-- Exc-3 count all title's that contains substring "the"
select count(*)
from books
where title like '%the%';

-- using GROUP BY Clause with COUNT()
select author_fname,author_lname, COUNT(*)
from books
group by author_lname;



select author_fname,author_lname, COUNT(*)
from books
group by author_lname, author_fname;


select released_year, COUNT(*)
from books
group by released_year;

select concat("In" , " ",  released_year, "Book(s)", " ", "Released") as "Released_Year" ,COUNT(*)
from books
group by released_year;

-- using MAX() and MIN() Functions
select max(pages), min(pages)
from books;

-- Exc-4. Find the authors who have longest books and also find the author who have smallest books
select concat(author_fname, " ", author_lname) as "Full_Name" , max(pages) , title 
from books;
--  this gives a error value , solution is
select concat(author_fname, " ", author_lname) as "Full_Name" , title , pages
from books
where pages = (select max(pages) from books);

select concat(author_fname, " ", author_lname) as "Full_Name" , title , pages
from books
where pages = (select min(pages) from books);

-- Exc-5.0 Find the year each author published their first book
select concat(author_fname, " ", author_lname) as "Full_Name" , title , min(released_year) as "Published_Year"
from books
group by author_lname, author_fname;

-- Exc-5.1 Prints out how many books were released in each year
select title, count(distinct title) , released_year
from books
group by released_year;

-- Exc-6 Find the longest books for each authors
select concat(author_fname, " ", author_lname) as "Full_Name" , title , min(pages) as "Published_Year"
from books
group by author_lname, author_fname;

-- using SUM([Distinct], column1, column2, .....)
select sum(pages) from books;

-- Exc-7. Sum all pages each author has written
select concat(author_fname, " ", author_lname) as "Full_Name" , sum(pages)
from books
group by author_lname, author_fname;

-- using AVG([Distinct], column1, column2, ......)
select AVG(released_year)
from books;

-- Exc-8. Calculate the average stock quantity for books released in same year
select released_year, AVG(stock_quantity)
from books
group by released_year;

-- Exc-9. Calculate the average pages each author written
select distinct(concat(author_fname, " ", author_lname)) as "Full_Name" , AVG(pages)
from books
group by released_year;

-- Exc-10. Calculate the average pages for each distinct author written
select distinct(concat(author_fname, " ", author_lname)) as "Full_Name" , AVG(pages)
from books
group by author_lname, author_lname;


