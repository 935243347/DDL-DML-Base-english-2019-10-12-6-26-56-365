-- **Database level:**
-- Display all the database
show DATABASES;

-- Enter a certain database
use `test_db`;

-- Create a database
create DATABASE `homework-db`;

-- Create the database of the designated character set
create database if not exists `homework-db` default character set = 'utf8';

-- Display the creation information fo the database
SHOW CREATE DATABASE `homework-db`;

-- Revise the codes of the database
alter database `homework-db` character set utf8;

-- Delete a database
drop DATABASE `homework-db`;

-- **Table level**
-- Revise table name
alter table student rename to teacher;

-- Revise the field's data type
alter table teacher modify name varchar(50);

-- Revise field name
alter table teacher change name teachname varchar(20);

-- Add field
alter table teacher add column email varchar(40) not null;

-- Delete field
alter table teacher drop column email;

-- Revise the table's storage engine
ALTER TABLE teacher ENGINE=InnoDB

-- Delete the table's foreign key restriant
ALTER TABLE teacher ADD CONSTRAINT teacher_ibfk FOREIGN KEY (scope_id) REFERENCES scope(id);
ALTER TABLE teacher drop FOREIGN KEY teacher_ibfk;

-- Delete a table
DROP TABLE teacher;
