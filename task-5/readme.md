# Task 5: SQL Joins (Inner, Left, Right, Full)

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on learning how to combine data from multiple tables using different types of joins.

## 🎯 Objective

To understand and practice:
- Combining data from two or more related tables
- Applying different join types: INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN
- Exploring how joins work to merge datasets based on relationships

## 🛠️ Tools Used

- MySQL Workbench  
(Used to write and execute SQL join queries)

## 📁 Deliverables

- SQL script with all join queries  
- This README file summarizing the task

## 🧱 Key Concepts Practiced

- INNER JOIN to get matching records from both tables  
- LEFT JOIN to include all records from the left table and matching ones from the right  
- RIGHT JOIN to include all records from the right table and matching ones from the left  
- FULL OUTER JOIN (or FULL JOIN) to get all records when there is a match in either table  
- Understanding Cartesian products and ensuring joins are correctly filtered on keys

## ✅ Task Steps

1. Created two related tables (Customers and Orders).
2. Populated these tables with sample data.
3. Wrote SQL queries to perform:
   - INNER JOIN to display only matching records.
   - LEFT JOIN to show all records from the left table, even without matches in the right.
   - RIGHT JOIN to show all records from the right table, even without matches in the left.
   - FULL OUTER JOIN to include all records from both tables.
4. Observed how missing matches resulted in NULL values in the output.

## 💻 SQL Queries Used

```sql
-- INNER JOIN to get customers who have placed orders 
   SELECT c.customerNumber,c.customername,o.ordernumber 
   FROM customers c 
   INNER JOIN orders o 
   ON c.customernumber=o.customernumber;

-- LEFT JOIN to get all customers and their orders (if any)
   SELECT c.customerNumber,c.customername,o.ordernumber 
   FROM customers c 
   LEFT JOIN orders o 
   ON c.customernumber=o.customernumber;

-- RIGHT JOIN to get all orders and their customers (if any)
   SELECT c.customerNumber,c.customername,o.ordernumber 
   FROM customers c 
   RIGHT JOIN orders o 
   ON c.customernumber=o.customernumber;

-- FULL OUTER JOIN to combine all customers and orders (left join and right join by using union)
SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
LEFT JOIN orders o 
ON c.customernumber=o.customernumber
UNION
SELECT c.customerNumber,c.customername,o.ordernumber 
FROM customers c 
RIGHT JOIN orders o 
ON c.customernumber=o.customernumber;
```
# 📌 Conclusion
This task helped me understand how to merge and analyze data from multiple tables using various types of joins. 
By practicing INNER, LEFT, RIGHT, and FULL OUTER JOIN, I learned how to control which records are included in the results and how to interpret NULL values that indicate missing matches.
These join techniques are crucial for combining data across tables and form the foundation for complex data analysis and reporting.
