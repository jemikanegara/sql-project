SELECT COUNT(emp_no) AS current_active_employee
FROM titles
WHERE to_date > NOW();