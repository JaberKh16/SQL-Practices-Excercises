-- Working with Online_books

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    user_email VARCHAR(100)
);




INSERT INTO customers (first_name, last_name, user_email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
	   
	  
	  
	  
CREATE TABLE orders(
    order_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    order_date DATETIME,
    amount DECIMAL(8,2),
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

	   
-- Cross Join
select * from customers, orders;	   

-- Implicit Inner Join	   
select first_name, customer_id, order_id, user_email,order_date
from customers
where customers.id = orders.customer_id;	   
	   
-- Explicit Inner Join	   
select first_name, customer_id, user_email, order_date
from customers
JOIN orders
ON customers.id = orders.customer_id;