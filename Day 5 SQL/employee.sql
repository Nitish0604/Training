show databases;
create database IF NOT EXISTS mindsprint;
use mindsprint;

CREATE TABLE employee (
	id int primary key,
	name varchar(100),
    department varchar(100),
    salary decimal(10, 2)
);

-- To describe the table
desc employee;

-- Insert single record using all the fields
INSERT INTO employee VALUES (1, 'Alex', 'I.T.', 45678, 'Jr. Developer');

-- Make changes to the table to add a new column  
ALTER TABLE employee ADD COLUMN position varchar(100);

-- Insert record by using field name
INSERT INTO employee (id, position, department, salary, name) VALUES (2, 'Sr. Developer', 'I.T.', 87690, 'John');

--  If you skip any field, it will take NULL
INSERT INTO employee (id, position, salary, name) VALUES (3, 'Sr. Developer', 87690, 'David');

-- If you want to insert multiple values
INSERT INTO employee (id, position, department, salary, name) VALUES 
	(4, 'Designer', 'I.T.', 25000, 'Bob'),
    (5, 'Manager', 'Sales', 90000, 'Catherine'),
    (6, 'Manager', 'SAP', 10000, 'Jack');

-- To get all the rows
SELECT * FROM employee;

Update data
UPDATE employee SET salary = 50000 WHERE id = 4;

-- Delete data
DELETE FROM employee WHERE id = 6;

-- Delete all data
DELETE FROM employee;

-- Truncate data (recreate the table)
TRUNCATE TABLE employee;

-- Delete the entire table
DROP TABLE employee;

-- Create table using extra attributes
CREATE TABLE employees (
	id int primary key auto_increment,
	name varchar(100),
    position varchar(100),
    department varchar(100),
    salary decimal(10, 2)
);

INSERT INTO employees (name, position, department, salary) VALUES 
	('Alex', 'Jr. Developer', 'I.T.', 45678),
    ('John', 'Sr. Developer', 'I.T.', 87690),
	('Bob', 'Designer', 'I.T.', 25000),
    ('Catherine', 'Manager', 'Sales', 90000),
    ('Jack', 'Manager', 'SAP', 10000);

-- Verify
SELECT * FROM employees;

-- Single column retrieval
SELECT name FROM employees;
SELECT name, position FROM employees;

-- While giving alias, give quotes if there is a space in alias
SELECT 1+1 as result;
SELECT concat('John', ' ', 'Doe') as fullname;
SELECT now() as today;
SELECT upper('Anushka Kohli') as 'Upper Case';

-- Where clause
-- retrieve the data of employees whose salary is more than 50000
SELECT * FROM employees WHERE salary > 50000;
-- retrieve the data of employees whose salary is equal to 90000
SELECT * FROM employees WHERE salary = 90000;
-- retrieve the data of employees whose id is 4
SELECT * FROM employees WHERE id = 4;
-- retrieve the data of employees whose name is Alex
SELECT * FROM employees WHERE name = 'Alex';
-- retrieve the data of employees whose salary is between 30000 to 70000
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 70000;
-- retrieve employees list from department I.T.
SELECT * FROM employees WHERE department = 'I.T.';

-- Order by clause
-- Order by salary in ascending order
SELECT * FROM employees ORDER BY salary ASC;
-- Order by salary in descending order
SELECT * FROM employees ORDER BY salary DESC;
-- Order by department Ascending and salary descending
SELECT * FROM employees ORDER BY department ASC, salary DESC;
-- Order by position Ascending and name ascending
SELECT * FROM employees ORDER BY position ASC, name ASC;
-- Order by salary descending, department ascending and name descending
SELECT * FROM employees ORDER BY salary DESC, department ASC, name DESC;
-- To get the highest salary employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

--  Distinct (Unique value)
SELECT DISTINCT position FROM employees;

-- AND, OR
SELECT * FROM employees WHERE department  = 'Sales' AND salary > 70000;
SELECT * FROM employees WHERE department  = 'Sales' OR department  = 'R&D';

-- In, NOT IN
SELECT * FROM employees WHERE department IN ('Sales', 'SAP');
SELECT * FROM employees WHERE department NOT IN ('Sales', 'SAP');

-- Between
SELECT * FROM employees WHERE salary BETWEEN 60000 AND 70000;

-- Like - to match letters, symbols etc
SELECT * FROM employees WHERE name LIKE 'J%';
SELECT * FROM employees WHERE position LIKE '%Dev%';

-- Is NULL
SELECT * FROM employees WHERE salary IS NULL;