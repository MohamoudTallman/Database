SELECT titles.title,COUNT(DISTINCT employees.emp_no) AS 'Employees number',AVG(salaries.salary) AS 'Salary AVG Group'
FROM employees,titles,salaries
WHERE employees.emp_no=titles.emp_no AND employees.emp_no=salaries.emp_no
GROUP BY titles.title
LIMIT 5; 