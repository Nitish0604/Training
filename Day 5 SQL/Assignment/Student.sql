CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    major VARCHAR(255),
    gpa DECIMAL(3, 2),
    enrollment_date DATE
);

INSERT INTO Students (student_id, name, age, major, gpa, 
enrollment_date) 
VALUES  
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'), (102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'), (103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'), 
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'), 
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'), (106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28'); 

SELECT * FROM Students;

-- 1.Select all students who are majoring in "Computer Science“ 
SELECT * FROM Students WHERE major = 'Computer Science';
-- 2. Select students with a GPA greater than 3.5 or who are majoring in "Mathematics“ 
SELECT * FROM Students WHERE gpa > 3.5 OR major = 'Mathematics';
-- 3. Select students who are older than 20 and have a GPA less than 3.0
SELECT * FROM Students WHERE age > 20 AND gpa < 3;
-- 4. Select students who enrolled between January 1, 2023 and December 31, 2023 
SELECT * FROM Students WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-12-31';
-- 5. Select distinct majors from the Students table 
SELECT DISTINCT major FROM Students;
-- 6. Select students with IDs in the list (101, 102, 103) 
SELECT * FROM Students WHERE  student_id IN (101, 102, 103);
-- 7. Select students where the GPA is NULL (if applicable): 
SELECT * FROM Students WHERE gpa IS NULL;
-- 8. Select students where the name is not NULL 
SELECT * FROM Students WHERE name IS NOT NULL;
-- 9. Select students whose age is exactly 18 or 22 
SELECT * FROM Students WHERE age = 18 OR age = 22;
-- 10. Select students who are either less than 19 years old or have a GPA greater than 3.8 
SELECT * FROM Students WHERE age < 19 OR gpa > 3.8;
-- 11. Select students who have a GPA between 2.5 and 3.5 and are majoring in "Biology“ 
SELECT * FROM Students WHERE gpa BETWEEN 2.5 AND 3.5 AND major = 'Biology';
-- 12. Select students and order them by name in ascending order and then by GPA in descending order 
SELECT * FROM Students ORDER BY name ASC, gpa DESC;