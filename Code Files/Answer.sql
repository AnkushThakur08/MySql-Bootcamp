-- SELECT Orders.OrderID,  Customers.CustomerName, Orders.OrderDate
-- FROM (Orders
-- INNER JOIN Customers ON Customers.CustomerID =  Orders.CustomerID)
-- LIMIT 5;


-- SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName, COUNT(*)
-- FROM ((Orders
-- INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID)
-- INNER JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID)
-- GROUP BY ShipperName;


-- SELECT Orders.OrderID, Customers.CustomerName 
-- FROM (Customers
-- LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID)

SELECT Orders.OrderID, Customers.CustomerName 
FROM (Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID)






