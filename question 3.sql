SELECT COUNT(employees.emp_no) as 'Total Employees'
FROM employees,dept_emp
WHERE employees.emp_no=dept_emp.emp_no
AND dept_emp.dept_no='d007'
AND (employees.hire_date BETWEEN '1986-01-01' AND '1991-03-07');