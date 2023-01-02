-- CREATING DATABASES & TABLES --

-- CREATE TABLE --
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP 
)

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP 
)

-- INSERT --
SELECT * FROM account

INSERT INTO account(username, password, email, created_on)
VALUES 
( 'Jose', 'password', 'jose@gmail.com', CURRENT_TIMESTAMP)

SELECT * FROM account

INSERT INTO job(job_name)
VALUES
('Data Scientist')

SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('Data Analyst')

SELECT * FROM job

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(10,10,CURRENT_TIMESTAMP)

SELECT * FROM account_job

-- UPDATE TABLE --
SELECT * FROM account

UPDATE account
SET last_login = CURRENT_TIMESTAMP

SELECT * FROM account

UPDATE account
SET last_login = created_on

SELECT * FROM account

SELECT * FROM account_job

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

SELECT * FROM account_job
SELECT * FROM account

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login

-- DELETE --
SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('Product Manager')

DELETE FROM job
WHERE job_name = 'Product Manager'
RETURNING job_id,job_name

SELECT * FROM job

-- ALTER TABLE -- 
CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

SELECT * FROM information

ALTER TABLE information
RENAME TO new_info

SELECT * FROM information

SELECT * FROM new_info

ALTER TABLE new_info
RENAME COLUMN person TO people

SELECT * FROM new_info

INSERT INTO new_info(title)
VALUES
('Some new title')

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL

INSERT INTO new_info(title)
VALUES
('Some new title')

SELECT * FROM new_info

-- DROP TABLE --
SELECT * FROM new_info

ALTER TABLE new_info
DROP COLUMN people

ALTER TABLE new_info
DROP COLUMN IF EXISTS people

-- CHECK CONSTRAINT --
CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK ( birthdate > '2000-01-01' ),
	hire_date DATE CHECK ( hire_date > birthdate ),
	salary INTEGER CHECK ( salary > 0 )
)

INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)
VALUES
( 'Atul', 'Kumar', '1997-11-15', '2020-11-23', 100 )

INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)
VALUES
( 'Atul', 'Kumar', '2000-11-15', '2020-11-23', 1000 )

SELECT * FROM employees