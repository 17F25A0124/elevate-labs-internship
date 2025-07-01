# Task 6: Subqueries and Nested Queries

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on writing subqueries and nested queries to perform more advanced data retrieval and filtering.

## 🎯 Objective

To understand and practice:
- Using subqueries in SELECT, WHERE, and FROM clauses
- Applying scalar and correlated subqueries
- Leveraging IN, EXISTS, and comparison operators with subqueries

## 🛠️ Tools Used

- MySQL Workbench
(Used to write and test nested SQL queries)

## 📁 Deliverables

- SQL script with all subqueries and nested queries  
- This README file summarizing the task

## 🧱 Key Concepts Practiced

- Scalar subqueries (returning a single value)
- Multi-row subqueries with IN
- Correlated subqueries that reference outer query rows
- Using EXISTS for efficient checks
- Subqueries in FROM as derived tables

## ✅ Task Steps

1. Connected to the existing elevate_labs database.
2. Wrote scalar subqueries to fetch values for calculations or filters.
3. Used subqueries with IN and EXISTS to filter data based on nested results.
4. Created correlated subqueries to evaluate conditions row by row.
5. Included subqueries inside FROM to act as temporary tables for aggregation.

## 💻 SQL Queries Used

```sql

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
```
# 📌 Conclusion
This task improved my ability to write more advanced SQL queries by using subqueries in different contexts.
I learned how scalar, multi-row, and correlated subqueries can help solve complex data problems, along with how EXISTS and derived tables simplify nested logic.
Mastering these concepts is crucial for building efficient and powerful database applications.
