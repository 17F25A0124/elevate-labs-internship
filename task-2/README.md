# Task 2: Data Insertion and Handling Nulls

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on inserting, updating, and deleting records in a database, along with handling missing or NULL values properly.

## 🎯 Objective

To practice and apply:
- Data Manipulation Language (DML)
- INSERT, UPDATE, DELETE statements
- NULL handling techniques
- Safe modifications using WHERE clauses

## 🛠️ Tools Used

- MySQL Workbench / DB Fiddle / SQLiteStudio  
(Used for writing and executing SQL statements)

## 📁 Deliverables

- SQL script containing INSERT, UPDATE, DELETE operations  
- This README file explaining what was done

## 🧱 Key Concepts Practiced

- INSERT INTO (full and partial rows)  
- Handling missing values with NULL or default values  
- UPDATE with conditions  
- DELETE with WHERE clause to avoid full-table deletion

## ✅ Task Steps

1. Connected to the new elevated_labs database created in Task 2.
2. Inserted multiple rows into different tables using INSERT INTO.
3. Handled missing data by using NULL where values were unknown.
4. Used UPDATE queries with WHERE conditions to modify specific records.
5. Executed DELETE operations carefully using WHERE clauses.
6. Ensured no data loss by checking records before deletion.

## 💻 SQL Commands Used

```sql
-- creating table with default constraint
   CREATE TABLE employee(
                         id int,
                         name varchar(20),
                         department varchar(20),
                         country varchar(20) default 'India'
                        );
-- Inserting data into employee table
   INSERT INTO employee VALUES(1,'KL Rahul','wicket keeper','India'),
                              (2,'kusal mendis','wicket keeper','Sri Lanka'),
                              (3,' Jacques Kallis','all rounder','South Africa'),
                              (4,'T Natarajan','bowler','India'),
                              (5,'Aaron Finch','all rounder','Austraila');

-- Inserting with NULL (here i used the default null which is created automatically when we skip the value)
   INSERT INTO employee(id,name,country)
               VALUES(6,'Deepti Sharma','India');

-- Updating a record
   UPDATE employee
   SET department = 'all rounder'
   WHERE id = 6;

-- Deleting a specific record
   DELETE FROM employee
   WHERE id = 11;
```
##  conclusion

This task helped reinforce key DML operations such as inserting, updating, and deleting data while handling NULL values correctly.
It provided hands-on experience with safe data manipulation practices, including the importance of WHERE clauses to prevent unintentional data loss.
This foundational practice prepares for more complex data-handling scenarios in future tasks.
