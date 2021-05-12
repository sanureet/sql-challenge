-- emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date

-- Drop table if exists
DROP TABLE employees;

-- Create new table employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	SEX VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

-- View table columns and datatypes
SELECT * FROM employees;

DROP TABLE departments;
--create departments table
 CREATE TABLE departments (
     dept_no VARCHAR(10) NOT NULL,
	 dept_name VARCHAR(30) NOT NULL,
	 PRIMARY KEY (dept_no)
);
SELECT * from departments;

DROP TABLE dept_emp;

-- Create department employees table 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;

DROP TABLE dept_manager;
-- Create department managers table 
CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);
 
SELECT * from dept_manager;

--create salaries table
DROP TABLE salaries;
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * from salaries;
-- create titles table
DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
	SELECT * from titles;
	
