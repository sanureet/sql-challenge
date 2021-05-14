--1. List the details of each employees: employee number, last name, frist name, gender, and salary.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
employees,salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--2. list employees who are hired in 1986
SELECT * FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;

--3. list the managers of each department
SELECT dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
ORDER BY EMP_NO

--4. List the department of each employees
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
ORDER  BY emp_no;

--5. List all employees whose first name is "Hecules" and last name begins with B
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--6. List all employees in the sales department.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Sales';

--7.List all the employees in sales and development department
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development');

--8. list the frequency of employees last name
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;

