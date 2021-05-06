-- emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date

-- Drop table if exists
DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	SEX VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);


-- View table columns and datatypes
SELECT * FROM employees;


