-- CREATE DATABASE MobileLLC;
-- USE MOBILELLC;

-- TODO: Create Table
-- CREATE TABLE customers(
--     cust_ID VARCHAR(20),
--     cust_name Varchar(100) NOT NULL,
--     cust_Address Varchar(100) NOT NULL,
--     PRIMARY KEY (cust_ID)
-- );

-- CREATE TABLE salesman(
--     sales_id VARCHAR(20) NOT NULL,
--     salesman_name Varchar(100) NOT NULL,
--     salesman_address Varchar(100) NOT NULL,
--     PRIMARY KEY (sales_id)
-- );

-- CREATE TABLE orders(
--     order_id VARCHAR(20) NOT NULL,
--     DateofOrder DATETIME,
--     Amount INT,
--     salesman_id VARCHAR(20) NOT NULL,
--     customer_id VARCHAR(20),
--     FOREIGN KEY (salesman_id) REFERENCES salesman(sales_id),
--     FOREIGN KEY (customer_id) REFERENCES customers(cust_ID)
-- );

-- TODO: Enter Data

-- INSERT INTO customers (cust_ID, cust_name, cust_address)
-- VALUES ("c002", "Ankush", "Mohali"),
-- ("c003", "Vipul", "Delhi"),
-- ("c004", "Vikas", "Chennai"),
-- ("c005", "Anshika", "Mumbai");

-- INSERT INTO salesman (sales_id, salesman_name, salesman_address)
-- VALUES ("s001", "Aman", "Mumbai"),
-- ("s002", "Ankush", "Chennai"),
-- ("s003", "Sagar", "Pune"),
-- ("s004", "Lakshay", "Delhi"),
-- ("s005", "Gagan", "Shimla");

-- INSERT INTO orders(order_id, DateofOrder, Amount, salesman_id, customer_id)
-- VALUES ("001", NOW(), 1000, "s001", "c002"),
-- ("002", NOW(), 4000,  "s002","c003"),
-- ("003", NOW(), 8000,  "s003", "c004"),
-- ("004", NOW(), 25000,  "s004", "c005");


-- TODO:Q1

-- SELECT Customers.cust_ID, Customers.cust_name, Orders.order_id
-- FROM (Customers
-- INNER JOIN Orders ON Customers.cust_ID = Orders.customer_id)
-- ORDER BY Customers.cust_name ASC; 

-- TODO: Q2

SELECT Customers.cust_ID, Customers.cust_name, Orders.Amount
FROM (Customers
INNER JOIN Orders ON Customers.cust_ID = Orders.customer_id)
WHERE Amount >= 20000;

-- TODO: Q3
--  SELECT COUNT(Cust_Name) AS Client from customers where cust_Address = "Mumbai";

-- TODO: Q4
-- SELECT Customers.cust_name,Orders.Amount, DateOfOrder
-- FROM (Customers
-- LEFT JOIN Orders ON Orders.customer_id = Customers.cust_ID); 

-- TODO: Q5
-- SELECT Customers.cust_ID, Customers.cust_name, Orders.Amount, DateOfOrder
-- FROM (Customers
-- LEFT JOIN Orders ON Orders.customer_id = Customers.cust_ID)
-- WHERE DateOfOrder >= 2021-01-01;

-- TODO: Q6


 SELECT Customers.cust_ID, Customers.cust_name from Customers, Orders
 WHERE Customers.cust_ID = Orders.Customer_id
 AND Orders.Amount > (SELECT MAX(Amount) from Orders WHERE
 Customers.cust_ID = (SELECT Customers.cust_ID FROM Customers WHERE
 Customers.cust_name = "Vipul"));

 


-- select Customers.cust_ID, Customers.cust_name from customers, orders 
-- where Customers.cust_ID = Orders.customer_id 
-- AND Orders.Amount > (select max(Amount) from or ders where cust_ID = (select cust_ID from customers where cust_name = "Vipul")) group by Customers.cust_ID


-- SELECT Customers.cust_ID, Customers.cust_name, Orders.Amount
-- FROM (Customers
-- INNER JOIN Orders ON Orders.customer_id = Customers.cust_ID)
-- WHERE Orders.Amount > (SELECT MAX(Amount) FROM orders
-- WHERE Customer.cust_ID = (SELECT cust_ID from Customers
-- cust_Name = "Ankush"));



--  SELECT Customers.cust_ID, Customers.cust_name from Customers, Orders
--  WHERE Customers.cust_ID = Orders.Customer_id
--  AND Orders.Amount > (SELECT MAX(Amount) from Orders WHERE
--  Customers.cust_ID = (SELECT Customers.cust_ID FROM Customers WHERE
--  Customers.cust_name = "Vipul"));


-- SELECT Customers.cust_ID, Customers.cust_name, Orders.Amount
-- FROM (Customers
-- INNER JOIN Orders ON Orders.customer_id = Customers.cust_ID)
-- WHERE Orders.Amount = (Select MAX(Amount) from Orders AND
-- Customers.cust_name = "Anshika");



























-- TODO: 1
-- select upper(cus_ID),upper(cus_name) from customers;

-- TODO: 2
-- select cus_name, EmpAddress from customers 
-- where cus_name like 'A%' and EmpAddress='Mumbai';

-- TODO: 3
-- select * from salesman 
-- where salesman_address='Pune' or 'Chennai' or 'Delhi' or 'Ahemdabad' and salesman_name like 'A%' or 'M%';

-- TODO: 4
-- select * from orders 
-- where sales_id = 's001' or sales_id = 's002' or sales_id = 's003' and  year(DateOfOrder) in (2021);

-- TODO: 5
-- select * from orders 
-- where not sales_id = 's001' or sales_id = 's002' or sales_id = 's003' and  year(DateOfOrder) in (2020,2021);

-- TODO: 6
-- select * from orders  
-- where not sales_id = 's001' or sales_id = 's002' or sales_id = 's003' and  year(DateOfOrder) in (2020,2021) order by dateOfOrder;

-- TODO: 7
-- select concat(substring(cus_ID, 1,3),"",substring(EmpAddress,3)) as CUSTOMER_ID from customers;

-- TODO: 8
-- select concat(substring(cus_name, 1,3),"",substring(EmpAddress,3)) as CUSTOMER_ID 
-- from customers WHERE EmpAddress='Mumbai' or EmpAddress='Chennai' or EmpAddress='Delhi';