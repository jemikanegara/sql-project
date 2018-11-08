SELECT 
    d.dept_name,
    COUNT(CASE WHEN e.gender = "M" THEN 1 ELSE NULL END) AS Male,
    COUNT(CASE WHEN e.gender = "F" THEN 1 ELSE NULL END) AS Female
FROM
	employees e
    INNER JOIN
    dept_emp de ON e.emp_no = de.emp_no
    INNER JOIN
    departments d ON de.dept_no = d.dept_no
    
WHERE de.to_date > NOW()
GROUP BY d.dept_name
ORDER BY d.dept_no ASC;
