USE employees_demo;

CREATE TABLE employees(
	emp_no INT(11) NOT NULL AUTO_INCREMENT,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY(emp_no)
    );

INSERT INTO employees(birth_date, first_name, last_name, gender, hire_date)
VALUES 
	("1991-12-01", "Surya", "Raja", "M", "2004-02-02" ),
    ("2010-12-01", "Jonathan", "Sugiarto", "M", "2015-02-02" ),
    ("2010-12-01", "Komarudin", "Yaochuan", "M", "2015-02-02" ),
    ("1994-12-01", "Gommaar", "Jonker", "M", "2014-02-02" ),
    ("1977-01-01", "Susi", "Susanti", "F", "2014-02-02" );
    
