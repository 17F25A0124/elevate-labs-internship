# Task 3: Writing Basic SELECT Queries

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on writing SQL SELECT queries to extract and filter data from one or more tables.

## 🎯 Objective

To practice and understand:
- Basic data retrieval using SELECT
- Filtering with WHERE, AND, OR, BETWEEN, LIKE, and IN
- Sorting results using ORDER BY
- Limiting output using LIMIT

## 🛠️ Tools Used

- MySQL Workbench
(Used for executing and testing SQL queries)

## 📁 Deliverables

- SQL file with all SELECT queries  
- This README file explaining what was done

## 🧱 Key Concepts Practiced

- SELECT * and selecting specific columns  
- Using WHERE with logical operators (AND, OR)  
- Pattern matching using LIKE  
- Range selection using BETWEEN  
- Sorting results with ORDER BY (ascending and descending)  
- Limiting output with LIMIT  
- Aliasing columns and using DISTINCT

## ✅ Task Steps

1. Connected to the elevated_labs database created in previous tasks.
2. Retrieved all data using SELECT *.
3. Retrieved specific columns using projection (e.g., SELECT Name, Price).
4. Filtered data using WHERE, AND, OR, BETWEEN, LIKE, IN.
5. Applied sorting using ORDER BY both ascending and descending.
6. Used LIMIT to restrict output to a specific number of rows.
7. Applied DISTINCT and column aliases to clean up output.

## 💻 SQL Queries Used

```sql
-- selecting all the records from mytable
 SELECT * FROM mytable;

-- selecting specific columns
 SELECT name,address
 FROM mytable;

-- using WHERE clause with AND,LIKE for pattern matching
 SELECT * FROM mytable
 WHERE name= 'Lavinia Beard' 
 AND address 
 LIKE '%adip%';

-- using WHERE clause with OR,LIKE for pattern matching
 SELECT * FROM mytable
 WHERE  name='Lavinia Beard' 
 OR BOD 
 LIKE '%2020';

-- using BETWEEN for range
 SELECT * FROM mytable
 WHERE id
 BETWEEN  30 AND 50 ;

-- sorting results by id in descending order
 SELECT * FROM mytable 
 ORDER BY id
 DESC;

-- using LIMIT to Limit output
 SELECT * FROM mytable
 LIMIT 5;
```

## 📌 Conclusion

This task strengthened my understanding of SQL's SELECT statement and its capabilities for data extraction and filtering. 
I learned how to retrieve specific records, apply conditions, sort data, and limit the output. 
These core operations are essential for querying real-world databases and lay the foundation for advanced data analysis and reporting in future projects.

