CREATE TABLE customer
(
    customer_id INTEGER,
    store_id INTEGER,
    customer_name VARCHAR(100),
    location VARCHAR(20)
 );
 
 CREATE TABLE store
 (
     store_id INTEGER,
     books_id INTEGER,
     books_name VARCHAR(20),
     street_name VARCHAR(10)
 );
 
 CREATE TABLE owner
 (
     owner_id INTEGER,
     owner_name VARCHAR(20),
     owner_ph_no INTEGER
 );

 
 INSERT INTO customer VALUES (12131, 1214, 'Rasel Islam', 'DHAKA'); 
 INSERT INTO store VALUES (1214, 10008080, 'Gitanjali', 'Dhanmondi' );
 INSERT INTO owner VALUES ( 117401341, 'AKRAM KHAIF', 0185642824);
 ALTER TABLE owner ADD owner_location VARCHAR(20);
 INSERT INTO owner VALUES(117401341, 'AKRAM KHAIF', 0185642824, 'Hyderbad');
 
 


SELECT customer_id, store_id FROM customer;
SELECT store_id, books_name FROM store;
SELECT owner_id , owner_ph_no, owner_location FROM owner;