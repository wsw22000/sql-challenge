SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

SELECT e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT depts.dept_no, depts.dept_name, e.emp_no, e.last_name, e.first_name 
FROM employees AS e
JOIN dept_manager AS dm 
	ON e.emp_no=dm.emp_no
JOIN departments AS depts
	ON depts.dept_no=dm.dept_no

SELECT e.emp_no, e.last_name, e.first_name, depts.dept_name 
FROM employees AS e
JOIN dept_emp as de 
	ON e.emp_no=de.emp_no
JOIN departments AS depts
	ON depts.dept_no=de.dept_no
	
SELECT e.last_name, e.first_name, e.sex 
FROM employees AS e
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

SELECT e.emp_no, e.last_name, e.first_name, depts.dept_name 
FROM employees AS e
JOIN dept_emp as de 
	ON e.emp_no=de.emp_no
JOIN departments AS depts
	ON depts.dept_no=de.dept_no
WHERE dept_name = 'Sales'

SELECT e.emp_no, e.last_name, e.first_name, depts.dept_name 
FROM employees AS e
JOIN dept_emp as de 
	ON e.emp_no=de.emp_no
JOIN departments AS depts
	ON depts.dept_no=de.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

SELECT last_name, COUNT (emp_no) AS "Total Employees" 
FROM employees
GROUP BY last_name
ORDER BY "Total Employees" DESC;

SELECT salary 
FROM salaries
WHERE emp_no = 499942