List the following details of each employee: 
employee number, 
last name, 
first name, 
gender, and salary.

SELECT emp.emp_no, 
	emp.last_name, 
	emp.first_name,
	emp.gender, 
	sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
		ON (emp.emp_no = sal.emp_no);



List employees who were hired in 1986.

---------------------------------------------------------
SELECT first_name, last_name 
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
---------------------------------------------------------


List the manager of each department with the following information: 
department number, 
department name, 
the manager's employee number, 
last name, first name, 
and start and end employment dates.

---------------------------------------------------------
SELECT 
emp.first_name, 
emp.last_name,
dept_managers.emp_no,
dept_managers.dept_no, 
dept.dept_no,
dept_managers.from_date, 
dept_managers.to_date
FROM dept_managers
	INNER JOIN dept 
		ON (dept_managers.dept_no = dept.dept_no)
	INNER JOIN employees as emp
		ON (dept_managers.emp_no = emp.emp_no);
-----------------------------------------------------------

List the department of each employee with the following information: 
employee number, 
last name, 
first name, 
and department name.


List all employees whose first name is "Hercules" and last names begin with "B."
-----------------------------------------------------------------------
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
-----------------------------------------------------------------------


List all employees in the Sales department, including their 
employee number, 
last name, 
first name, 
and department name.
----------------------------------------------------------------------
SELECT emp.first_name, 
emp.last_name, 
emp.emp_no, 
dept.dept_name
FROM employees AS emp
	INNER JOIN dept_emp
		ON (emp.emp_no = dept_emp.emp_no)
	INNER JOIN dept 
		ON (dept_emp.dept_no = dept.dept_no)
WHERE dept.dept_name = 'Sales';
-----------------------------------------------------------------------



List all employees in the Sales and Development departments, including their 
employee number, 
last name, 
first name, 
and department name.
---------------------------------------------------------------------
SELECT emp.first_name, 
emp.last_name, 
emp.emp_no, 
dept.dept_name
FROM employees AS emp
	INNER JOIN dept_emp
		ON (emp.emp_no = dept_emp.emp_no)
	INNER JOIN dept 
		ON (dept_emp.dept_no = dept.dept_no)
WHERE dept.dept_name = 'Sales'
OR dept.dept_name = 'Development';

---------------------------------------------------------------------


In descending order, 
list the frequency count of employee last names, i.e., 
how many employees share each last name.

SELECT last_name,
COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)
DESC;


