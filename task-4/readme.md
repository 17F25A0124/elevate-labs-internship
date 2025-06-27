# Task 4: Aggregate Functions and Grouping

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on summarizing and analyzing data using SQL aggregate functions such as SUM, COUNT, AVG, combined with GROUP BY and HAVING clauses.

## 🎯 Objective

To understand and practice:
- Using aggregate functions like SUM, COUNT, AVG
- Grouping records with GROUP BY
- Filtering grouped data with HAVING
- Applying rounding using ROUND()

## 🛠️ Tools Used

- MySQL Workbench
(Used for writing and executing SQL queries)

## 📁 Deliverables

- SQL file containing aggregate queries  
- This README file explaining what was done

## 🧱 Key Concepts Practiced

- Aggregate Functions: SUM(), AVG(), COUNT()  
- Grouping using GROUP BY  
- Filtering grouped results using HAVING  
- Difference between WHERE and HAVING  
- Use of ROUND() for formatting decimal output  
- Grouping by multiple columns

## ✅ Task Steps

1. Connected to the existing elevate_labs database.
2. Applied aggregate functions on relevant numeric columns.
3. Used GROUP BY to categorize and summarize data.
4. Filtered grouped data using HAVING for advanced analysis.
5. Practiced formatting numerical results using ROUND().
6. Generated insights like total orders per customer, average amount per customer, etc.

## 💻 SQL Queries Used

```sql
-- total orders per customer
SELECT cust_code,COUNT(*)AS total_orders 
FROM orders
GROUP BY cust_code;

-- Average ord_amount per customer
SELECT cust_code,ROUND(AVG(ord_amount),0)as avg_amount
FROM orders
GROUP BY cust_code;

-- Customers with more than or equal to 3 orders using HAVINGs
SELECT cust_code,COUNT(*)AS total_orders 
FROM orders 
GROUP BY cust_code
HAVING COUNT(*)>=3;

-- Total revenue per customer using SUM function
SELECT cust_code,SUM(ord_amount)AS total_amount
FROM orders
GROUP BY cust_code;
```
## 📌 Conclusion

This task helped me gain a deeper understanding of how to summarize and analyze data using SQL aggregate functions and grouping. By applying GROUP BY, HAVING, and functions like SUM, COUNT, and AVG, I learned how to extract meaningful insights from raw data. These skills are essential for reporting, dashboards, and data analysis workflows in real-world database environments.
