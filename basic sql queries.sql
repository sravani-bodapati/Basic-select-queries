-- SELECT Queries
-- 1. Simple SELECT
SELECT full_name, email FROM students;

-- 2. WHERE with AND
SELECT full_name, gender FROM students
WHERE gender = 'Female' AND department_id = 1;

-- 3. LIKE usage
SELECT full_name, email FROM faculty
WHERE email LIKE '%rao%';

-- 4. BETWEEN
SELECT full_name, dob FROM students
WHERE dob BETWEEN '2001-01-01' AND '2002-12-31';

-- 5. ORDER BY DESC
SELECT marks_obtained, grade FROM marks
ORDER BY marks_obtained DESC;

-- 6. LIMIT rows
SELECT marks_obtained FROM marks
ORDER BY marks_obtained DESC
LIMIT 3;

-- 7. IN clause
SELECT full_name FROM students
WHERE department_id IN (1, 2);

-- 8. Aliasing columns
SELECT full_name AS "Student Name", email AS "Email ID" FROM students;

-- 9. DISTINCT
SELECT DISTINCT department_id FROM faculty;

-- 10. Default sort (ASC)
SELECT full_name FROM students
ORDER BY full_name;
