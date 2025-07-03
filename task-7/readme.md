# Task 7: Creating Views

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on creating and using views to encapsulate complex queries, improve data abstraction, and enhance security.

## 🎯 Objective

To understand and practice:
- Using CREATE VIEW to define reusable query logic
- Employing views to simplify data access and hide complexity
- Demonstrating how views can control data exposure for security

## 🛠️ Tools Used

- MySQL Workbench
(Used to create and test views)

## 📁 Deliverables

- SQL script with CREATE VIEW statements and usage examples  
- This README file summarizing the task

## 🧱 Key Concepts Practiced

- Defining views with CREATE VIEW
- Querying data through views like a normal table
- Using views to hide joins, aggregations, or filters
- Understanding how views aid in data abstraction
- Dropping views when no longer needed with DROP VIEW

## ✅ Task Steps

1. Connected to the existing elevate_labs database.
2. Created simple and complex views using CREATE VIEW.
3. Queried views to verify they correctly represented underlying data.
4. Explored how views could hide sensitive columns or simplify joins.
5. Dropped views when testing different scenarios.

## 💻 SQL Queries Used

```sql
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

-- Dropping a view
DROP VIEW IF EXISTS HighValueOrders;
```
# 📌 Conclusion
This task helped me understand how views can encapsulate complex SQL logic and present simplified, secure representations of data to end users. By practicing creating, querying, and dropping views, I learned how they support data abstraction, reduce query repetition, and help control access to underlying table structures in real-world database systems.
