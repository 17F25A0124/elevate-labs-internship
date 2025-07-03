

-- Creating a simple view to show most ordered
CREATE VIEW  MostOrders AS
SELECT ordernumber, productcode, quantityordered
FROM orderdetails
WHERE quantityordered > 50;

-- Querying the view
SELECT * FROM MostOrders; 

-- Creating a view to join payments and orders
CREATE VIEW HighValueOrders AS
SELECT o.ordernumber, p.Customernumber, p.Amount
FROM payments p join orders o on o.customernumber=p.customernumber
WHERE Amount > 50000;

-- Querying the view
SELECT * FROM HighValueOrders;


-- Dropping a view
DROP VIEW IF EXISTS HighValueOrders;
