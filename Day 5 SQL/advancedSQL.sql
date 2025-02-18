-- PRIMARY KEY, FOREIGN KEY
CREATE TABLE departments (
	id INT PRIMARY KEY,    
    name VARCHAR(100) NOT NULL); 
    
INSERT INTO departments (id, name)  VALUES  
	(1, 'Sales'),  
    (2, 'R&D'),  
    (3, 'Marketing'),  
    (4, 'Finance'),  
    (5, 'Human Resources'); 
    
SELECT * from departments;

CREATE TABLE employees (   
	id INT PRIMARY KEY,    
    name VARCHAR(100) NOT NULL,  
    position VARCHAR(100) NOT NULL,  
    salary DECIMAL(10, 2),   
    department_id INT,   
    FOREIGN KEY (department_id) REFERENCES departments(id));

desc employees;

INSERT INTO employees  
(id, name, position, salary, department_id)  VALUES  
	(1, 'John Doe', 'Manager', 75000.00, 1),  
    (2, 'Jane Smith', 'Developer', 65000.00, 2),  
    (3, 'Emily Johnson', 'Designer', 60000.00, 3),  
    (4, 'Michael Brown', 'Analyst', 70000.00, 4),  
    (5, 'Linda Green', 'Manager', 75000.00, 1),  
    (6, 'James White', 'Developer', 65000.00, 2),  
	(7, 'William Black', 'Developer', NULL, 2),  
	(8, 'Mary Blue', 'HR', 50000.00, 5);
    
SELECT * FROM employees;

-- JOINS
-- Inner Join to take common details from both tables
SELECT e.id, e.name, e.position, e.salary, d.name AS 'Department Name' 
FROM employees e
JOIN departments d
ON e.department_id = d.id;

-- Insert one record in employee table without department_id
INSERT INTO employees (id, name, position, salary, department_id)
VALUES (9, 'Candice', 'Testing', 1200024, null);

-- Check again and see if the newly inserted user appears - it won't appear because it's not common in both tables
SELECT * FROM employees;

-- Left Join to take common details from both tables as well as values from left table
SELECT e.id, e.name, e.position, e.salary, d.name AS 'Department Name' 
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.id;

-- Insert one record in departments
INSERT INTO departments (id, name)  VALUES (6, 'IT');

-- Right Join to take common details from both tables as well as values from right table
SELECT e.id, e.name, e.position, e.salary, d.name AS 'Department Name' 
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.id;

-- Full outer join to take all details from both tables
SELECT e.id, e.name, e.position Designation, e.salary, d.name AS 'Department Name' 
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.id
	UNION
SELECT e.id, e.name, e.position Designation, e.salary, d.name AS 'Department Name' 
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.id;

-- Cross Join
SELECT e.id, e.name, d.id as 'Department ID', d.name as 'Department Name', d.name AS 'Department Name' 
FROM employees e
CROSS JOIN departments d;

-- GROUP BY
-- Group By - Calculate the total salary for each department  
SELECT d.name AS 'Department Name', sum(e.salary) AS 'Total Salary'
FROM employees e
JOIN departments d
ON e.department_id = d.id 
GROUP BY d.name;  

-- Having Clause - Total salary for each department and only show departments with a total salary greater than 100,000 
SELECT d.name AS 'Department Name', SUM(e.salary) AS 'Total Salary'
FROM employees e
JOIN departments d 
ON e.department_id = d.id GROUP BY d.name 
HAVING `Total Salary` > 100000; 

-- List the department having more than 2 employees
SELECT d.name as 'Department Name', COUNT(e.id) AS 'Total Employees' 
FROM employees e 
JOIN departments d ON e.department_id = d.id
GROUP BY d.name
HAVING `Total Employees` > 2;

-- Roll up
SELECT d.name as 'Department Name', SUM(e.salary) AS 'Total Salary' 
FROM employees e 
JOIN departments d ON e.department_id = d.id
GROUP BY d.name WITH ROLLUP;

-- TRANSACTIONS
CREATE TABLE Accounts(
	account_id VARCHAR(10) PRIMARY KEY, 
    account_name VARCHAR(100), 
    balance DECIMAL(10, 2) 
);

INSERT INTO Accounts (account_id, account_name, balance) VALUES 
('A001', 'Alice', 1000.00), 
('A002', 'Bob', 1500.00), 
('A003', 'Charlie', 2000.00); 

SELECT * FROM Accounts;

--  Commit
BEGIN;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A002';
COMMIT;

-- Rollback
BEGIN;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
ROLLBACK;

-- Save point
BEGIN; 
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001'; 
SAVEPOINT sp1; 
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001'; 
ROLLBACK TO sp1; 
COMMIT; 

-- Stored Procedure
-- Changing the delimitter from ; to //
DELIMITER //  
CREATE PROCEDURE GetAllAccounts() 
BEGIN     
	SELECT * FROM Accounts; 
END // -- Last line that ends with // instead of ; because delimitter has been changed to //
 -- Changing the delimitter from back to ;
DELIMITER ;  
CALL GetAllAccounts(); 