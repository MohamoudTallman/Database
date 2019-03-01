USE employees; 

# question 2 

SELECT gender, MIN(salary), MAX(salary), AVG(salary),COUNT(e.emp_no) as 'Total Employees'
FROM employees e, salaries s

WHERE s.emp_no = e.emp_no

GROUP BY gender;

# question 3

SELECT COUNT(employees.emp_no) as 'Total Employees'
FROM employees,dept_emp
WHERE employees.emp_no=dept_emp.emp_no
AND dept_emp.dept_no='d007'
AND (employees.hire_date BETWEEN '1986-01-01' AND '1991-03-07');

# question 4

SELECT titles.title,COUNT(DISTINCT employees.emp_no) AS 'Employees number',AVG(salaries.salary) AS 'Salary AVG Group'
FROM employees,titles,salaries
WHERE employees.emp_no=titles.emp_no AND employees.emp_no=salaries.emp_no
GROUP BY titles.title
LIMIT 5; 

# question 5

SELECT COUNT(*) as Total
FROM employees,titles
WHERE  employees.emp_no=titles.emp_no 
AND (titles.title='Senior Staff' OR titles.title='Staff');
