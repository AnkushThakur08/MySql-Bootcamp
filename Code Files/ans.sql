-- SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate 
-- FROM (Customers 
-- INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID);


-- SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName, COUNT(*)
-- FROM ((Orders
-- INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID)
-- INNER JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID)
-- GROUP BY ShipperName;


-- SELECT Customers.CustomerName, Orders.OrderID 
-- FROM (Orders 
-- LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID);

SELECT CITY from Customers
UNION
SELECT CITY from Suppliers
ORDER BY CITY ;









