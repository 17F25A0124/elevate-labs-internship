
-- Scalar subquery in SELECT
SELECT  
    productname,
    ( 
      SELECT 
      AVG(buyprice) 
      FROM 
         products
	)
AS 
 avgprice 
FROM 
   products;

-- Using IN with a subquery
SELECT * 
FROM 
   customers
WHERE 
   customernumber 
IN (
    SELECT  
         customernumber 
	FROM 
       customers 
	WHERE 
       city='NYC');

-- Correlated subquery
SELECT 
    customernumber,
    sum(amount) AS totalamount
FROM 
    payments
GROUP BY 
    customernumber
HAVING 
    sum(amount) > (
        SELECT 
            AVG(amount)
        FROM 
            payments
    );


-- Using EXISTS
SELECT Customernumber, customerName
FROM Customers C
WHERE EXISTS (
    SELECT 1 FROM Orders O
    WHERE O.Customernumber = C.Customernumber
);