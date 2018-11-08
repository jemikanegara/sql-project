SELECT 
    t.title, COUNT(t.emp_no) AS total
FROM
    employees e
        INNER JOIN
    titles t ON e.emp_no = t.emp_no
WHERE t.to_date > NOW() 
GROUP BY t.title;