-- 1. String CONCAT Function
-- using concat(column1, coulmn2, ....)
select author_fname, author_lname,
concat ( author_fname, ' ', author_lname) as "Full_Name"
from books;
-- using concat_ws("separator", column1, coulmn2)
select author_fname, author_lname,
concat_ws("|||" ,author_fname, author_lname) as "Full_Name"
from books;

-- 2. String SUBSTR("char_String", starting_position, destination_index)
select title , substr(title, 1, 10) as "Book_Title"
from books;

-- Exc-1 . Combination of substr() and concat()
select title , concat(substr(title, 1, 10), ".....") as "Short_Title"
from books;

-- 3. String Replace(column1, 'sub_str', 'rep_str')
select title , replace(title , "e", "3") as "Replaced_Title"
from books;

-- Exc-2. Combination of substr(), replace(), concat()
select title,  substr(replace(title , "e", "3"), 1, 10) as "Replaced_With_Substring"
from books;

select title,  
concat(substr(replace(title , "e", "3"), 1, 10), "---->", concat(author_fname, " ", author_lname)) as "Replaced_With_Substring"
from books;

-- 4. String REVERSE(column)
select reverse(author_fname) as "Reversed_Name"
from books;

-- Exc-3 Combination of concat() and reverse()
select concat(author_fname, reverse(author_fname)) as "Palindrom_Author_Name"
from books;

-- 5. String CHAR_LENGTH(column)
select author_lname, char_length(author_lname) as "Length"
from books;

-- Exc-4 Combination of concat() and CHAR_LENGTH
select concat(author_lname, " ", "is", "  ", char_length(author_lname), " " , "Charcaters long") as "Characters_Length"
from books;

-- 6. String UPPER(column) and LOWER(column)
select title, upper(title) as "Upper_Case", lower(title) as "Lower_Case " 
from books;

-- Exc-5 Combination of concat() and UPPER(), LOWER()
select title,  concat( "My favourite Book is", "in Upper_Case", upper(title) , "and", "in Lower_Case",  lower(title)) 
from books;

