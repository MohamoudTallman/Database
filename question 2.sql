USE employees; 

SELECT gender, MIN(salary), MAX(salary), AVG(salary),COUNT(e.emp_no) as 'Total Employees'
FROM employees e, salaries s

WHERE s.emp_no = e.emp_no

GROUP BY gender
