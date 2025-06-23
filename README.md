# Task 1: Database Setup and Schema Design

## 📘 Internship Task Overview

This task is part of the *SQL Developer Internship Program* and focuses on understanding the core concepts of database creation and schema design using SQL.

## 🎯 Objective

To learn and practice:
- Creating a database schema
- Defining entities, relationships, and constraints
- Implementing normalization
- Designing an ER diagram

## 🛠️ Tools Used

- MySQL Workbench  
- Table Data Import Wizard (for importing data)

## 📁 Deliverables

- SQL script for schema creation  
- ER Diagram  
- This README file explaining the task

## 🧱 Key Concepts Practiced

- Data Definition Language (DDL)  
- Entity Relationship Diagrams (ERD)  
- Normalization  
- Primary and Foreign Keys  
- Constraints

## ✅ Task Steps

1. Chose a domain: *Pizza Hut (Food Service Database)*
2. Created a database and four related tables
3. Imported data using *MySQL Table Import Wizard*
4. Defined primary and foreign key relationships
5. Designed an ER diagram for the schema

## 💻 SQL Commands Used

```sql
-- Step 1: Create a new database
CREATE DATABASE pizza_hut;

-- Step 2: Tables were created manually inside the pizza_hut database
CREATE  TABLE orders(
                     order_id int primary key,
                     order_date date,
                     order_time time
                    );


CREATE  TABLE orders_details(
                             order_details_id int primary key,
                             order_id int,
                             pizza_id text,
                             quantity int,
                             foreign key(order_id) references orders(order_id),
                             foreign key(pizza_id) references pizzas(pizza_id)
                            );


CREATE  TABLE pizza_types(
                          pizza_type_id text primary key,
                          name text,
                          category text,
                          ingredients text
                         );


CREATE  TABLE pizzas(
                     pizza_id text primary key,
                     pizza_type_id text,
                     size text,
                     price double,
                     foreign key(pizza_type_id) references pizza_types(pizza_type_id)
                    );


-- Step 3: Data was imported into the tables using the MySQL Table Import Wizard


-- step 4:6. Designed and presented an *ER Diagram* for the schema


## 📌 Conclusion

This task provided hands-on experience with database creation, schema design, and relationship modeling using SQL.
By creating the pizza_hut database, defining multiple table relationships, and using foreign keys effectively, I strengthened my understanding of core SQL concepts.
The use of ER diagrams helped visualize and validate the database structure.
This foundation will support more advanced tasks in upcoming modules of the internship.

