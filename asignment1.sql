create database demo3;
use demo3;
create table employees(
ID int,em_name varchar(30),em_department varchar(20),Age int, email varchar(30), salary int);
INSERT INTO Employees (ID, em_name, em_department, Age, email, Salary)
VALUES
(1, 'Dhanigavel.S', 'Mechanical', 21, 'dhanigavel@example.com', 50000),
(2, 'John', 'HR', 28, 'john.hr@example.com', 60000),
(3, 'Alice', 'IT', 25, 'alice.it@example.com', 55000),
(4, 'Bob', 'Sales', 30, 'bob.sales@example.com', 52000),
(5, 'Meena', 'Finance', 26, 'meena.finance@example.com', 58000),
(6, 'Ravi', 'Marketing', 29, 'ravi.marketing@example.com', 57000);
select * from employees;

select * from employees;
ALTER TABLE Employees
ADD Salary INT;
UPDATE Employees SET Salary = 50000 WHERE ID = 1;
UPDATE Employees SET Salary = 60000 WHERE ID = 2;
UPDATE Employees SET Salary = 55000 WHERE ID = 3;
UPDATE Employees SET Salary = 52000 WHERE ID = 4;
UPDATE Employees SET Salary = 58000 WHERE ID = 5;
UPDATE Employees SET Salary = 57000 WHERE ID = 6;
UPDATE Employees SET Salary = 60000 WHERE ID = 4;
UPDATE Employees SET em_department = 'Marketing' WHERE em_department = 'Sales';
UPDATE Employees SET Salary = Salary * 1.10 WHERE em_department = 'IT';
UPDATE Employees SET em_name = 'Dhanigavel.S', em_department = 'Mechanic' WHERE ID=1;
DELETE FROM Employees WHERE ID = 5;
DELETE FROM Employees WHERE em_department = 'HR';

DELETE FROM Employees WHERE ID IN (SELECT ID FROM Employees WHERE Salary < 60000);
CREATE TABLE Enrollment (
  StudentID INT,
  CourseID INT,
  PRIMARY KEY (StudentID, CourseID)
);
select * from employees;
DROP TABLE TempData;
ALTER TABLE Employees DROP CONSTRAINT PK_Employees;
select * from PK_Employees;
BEGIN TRANSACTION;
TRUNCATE TABLE Orders;
TRUNCATE TABLE Customers;
COMMIT;
select* from employees;


