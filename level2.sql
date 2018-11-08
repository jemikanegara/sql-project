ALTER TABLE titles
ADD COLUMN to_date DATE DEFAULT "9999-01-01";

alter table titles 
drop primary key; 

ALTER TABLE titles
add primary key(emp_no, title, from_date);
 
SELECT * FROM titles;
