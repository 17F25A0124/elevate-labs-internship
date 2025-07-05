# Task 8: Stored Procedures and Functions

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on creating stored procedures and functions to modularize SQL logic and make it reusable.

## 🎯 Objective

To understand and practice:
- Using CREATE PROCEDURE to define reusable procedural code blocks
- Using CREATE FUNCTION to encapsulate computations that return values
- Working with parameters and basic conditional logic

## 🛠️ Tools Used

- MySQL Workbench / DB Browser for SQLite  
(Used to write, execute, and test procedures and functions)

## 📁 Deliverables

- SQL scripts with at least one stored procedure and one function  
- This README file summarizing the task

## 🧱 Key Concepts Practiced

- Creating stored procedures with IN parameters
- Creating functions that return scalar values
- Understanding the difference between procedures (perform actions) and functions (return results)
- Calling procedures and functions from SQL

## ✅ Task Steps

1. Connected to the existing pizza_hut database.
2. Created a stored procedure to perform a reusable operation (like inserting or summarizing data).
3. Created a scalar function to compute a value, such as total orders for a customer.
4. Tested by calling the procedure and function with sample inputs.

## 💻 SQL Queries Used

```sql
-- Creating a stored procedure to get orders above a certain amount
DELIMITER //
CREATE PROCEDURE GetHighValuepayments(IN minAmount DECIMAL(10,2))
BEGIN
    SELECT * FROM payments WHERE Amount > minAmount;
END //
DELIMITER ;

-- Calling the stored procedure
CALL GetHighValuepayments(50000);

-- Creating a function to get total orders for a customer
DELIMITER //
CREATE FUNCTION GetOrderCount(custID INT)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM Orders WHERE Customernumber = custID;
    RETURN total;
END //
DELIMITER ;

-- Using the function in a SELECT
SELECT Customernumber, 
       GetOrderCount(Customernumber) AS TotalOrders 
FROM Customers 
ORDER BY totalorders DESC;
```
# 📌 Conclusion
This task helped me understand how views can encapsulate complex SQL logic and present simplified, secure representations of data to end users. By practicing creating, querying, and dropping views, I learned how they support data abstraction, reduce query repetition, and help control access to underlying table structures in real-world database systems.
