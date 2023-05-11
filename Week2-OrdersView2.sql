USE littlelemondb;
CREATE VIEW OrdersView2 AS
SELECT customer.CustomerID, customer.FullName, orders.OrderID, orders.TotalCost
FROM customer INNER JOIN orders on customer.CustomerID=orders.Customer_CustomerID
WHERE orders.TotalCost > 150
ORDER BY orders.TotalCost ASC;



