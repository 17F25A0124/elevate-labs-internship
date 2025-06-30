

-- JOINING two tables using inner join 
SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
INNER JOIN orders o 
ON c.customernumber=o.customernumber;

-- joining two tables using left join

SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
LEFT JOIN orders o 
ON c.customernumber=o.customernumber;

-- joining two tables using right join

SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
RIGHT JOIN orders o 
ON c.customernumber=o.customernumber;

-- joining two tables using full join(left join and right join by using union)

SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
LEFT JOIN orders o 
ON c.customernumber=o.customernumber
UNION
SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
RIGHT JOIN orders o 
ON c.customernumber=o.customernumber;