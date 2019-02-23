SELECT COUNT(*) as Total
FROM employees,titles
WHERE  employees.emp_no=titles.emp_no 
AND (titles.title='Senior Staff' OR titles.title='Staff');