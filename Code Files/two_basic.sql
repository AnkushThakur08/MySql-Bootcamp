-- SHOW DATABASES;

-- TODO: create customer table
-- CREATE DATABASE abc;
-- USE abc;
-- CREATE TABLE customers(
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL,
--     email VARCHAR(40) NOT NULL DEFAULT 'No email provided',
--     amount INT,
--     PRIMARY KEY (id)
-- );

-- TODO: add some values in customers

-- INSERT INTO customers(name, amount)
-- VALUES (  
--      'Rob',
--     30
-- );

-- TODO: add this data for practice
-- INSERT INTO customers(name, email, amount)
-- VALUES ('hitesh', 'hitesh@lco.dev', 35),
--         ('George', 'geo@lco.dev', 45),
--         ('hitesh', 'hitesh@gmail.com', 88),
--         ('lina', 'lina@gmail.com', 78),
--         ('Jimmy', 'jimmy@yahoo.co.in', 54),
--         ('lina', 'lina@yahoo.co.in', 35),
--         ('hitesh', 'hitesh@yahoo.co.in', 56);

-- TODO: answer some questions:
-- SELECT name from customers;

-- SELECT email from customers;

-- SELECT amount from customers;
-- SELECT amount AS Purchases from customers;

-- TODO: Update tasks

-- SELECT * from customers WHERE name="jimmy";
-- UPDATE customers SET email='jimmy@yahoo.com'  WHERE name="jimmy";

-- SELECT * from customers WHERE name="lina";
-- SELECT * from customers WHERE id=6;

-- UPDATE customers SET amount=38 WHERE id=6;

-- SELECT * from customers WHERE name="lina";

-- UPDATE customers SET email='lina@gmail.com' WHERE name="lina";

-- TODO: Delete some data

-- SELECT * from customers WHERE name = 'george';

-- DELETE from customers WHERE name = 'george';

-- SELECT * from customers WHERE name = 'hitesh';

-- DELETE FROM customers WHERE name='hitesh';