CREATE TABLE titles (
    emp_no INT(11) NOT NULL ,
    title VARCHAR(50) NOT NULL,
    from_date DATE NOT NULL,
    PRIMARY KEY (emp_no, title)
);

INSERT INTO titles (emp_no, title, from_date)
VALUES
(1, "Senior Engineer", "2004-02-02"),
(2, "Staff", "2015-02-02"),
(3, "Senior Engineer", "2015-02-02"),
(4, "Senior Staff", "2014-02-02"),
(5, "Staff", "2014-02-02");

