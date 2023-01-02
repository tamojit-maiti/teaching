-- NULL IF --
CREATE TABLE students(
	first_name VARCHAR(50),
	branch VARCHAR(50)
)

INSERT INTO students(
	first_name,
	branch
)
VALUES
('X','A'),
('Y','A'),
('Z','B')

SELECT * FROM students

SELECT (
SUM(CASE WHEN branch = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN branch = 'B' THEN 1 ELSE 0 END)
) AS branch_ratio
FROM students

DELETE FROM students
WHERE branch = 'B'

SELECT * FROM students

SELECT (
SUM(CASE WHEN branch = 'A' THEN 1 ELSE 0 END)/
SUM(CASE WHEN branch = 'B' THEN 1 ELSE 0 END)
) AS branch_ratio
FROM students

SELECT (
SUM(CASE WHEN branch = 'A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN branch = 'B' THEN 1 ELSE 0 END),0)
) AS branch_ratio
FROM students