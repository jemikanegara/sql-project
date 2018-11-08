SELECT 
    e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
FROM
    employees e
        INNER JOIN
    titles t ON
		e.emp_no = t.emp_no;

