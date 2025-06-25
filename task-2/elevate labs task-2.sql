
create table employee(id int,name varchar(20),department varchar(20),country varchar(20) default 'India');

-- inserting values using insert command/DML command

insert into employee values(1,'KL Rahul','wicket keeper','India'),
                           (2,'kusal mendis','wicket keeper','Sri Lanka'),
                           (3,' Jacques Kallis','all rounder','South Africa'),
                           (4,'T Natarajan','bowler','India'),
                           (5,'Aaron Finch','all rounder','Austraila');
                           
-- inserting the values into specific columns only and showing null to remainig columns

insert into employee(id,name,country) values(6,'Deepti Sharma','India');

select * from employee
 where department is null;
 
-- showing the default constraint usage

insert into employee(id,name,department) values (7,'MS Dhoni','all rounder');

select * from employee;


-- now updating the department for deepti sharma from null to all rounder

update employee
set department = 'all rounder'
where id = 6;

select * from employee;


insert into employee values(8,'jadeja','all rounder','India'),
                           (9,'Brian Lara','all rounder','West Indies'),
                           (10,'sachin tendulkar','all rounder','India');

insert into employee values(11,'Temba Bavuma','all rounder','South Africa');

-- deleting one row by using delete command and where clause

delete from employee
where id = 11;

select * from employee;