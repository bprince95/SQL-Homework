"employee"
-
emp_no INT PK
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

"dept"
-
dept_no VARCHAR FK >- dept_emp.dept_no
dept_name VARCHAR

"dept_managers"
-
dept_no INT FK >- Dept_Emp.dept_no
emp_no INT FK >- employee.emp_no
from_date DATE
to_date DATE

"dept_emp"
-
emp_no INT FK >- employee.emp_no
dept_no INT FK
from_date DATE  
to_date DATE

"titles"
-
emp_no INT FK >- employee.emp_no
title VARCHAR PK
from_date DATE PK
to_date DATE 

"Salaries"
-
emp_no INT FK >- employee.emp_no
salary INT
from_date PK
to_date DATE
 