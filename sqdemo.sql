USE impact_byte;

/* DDL -------------------------------------------------------- */

/* CREATE */
CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    address TEXT,
    age INT(3),
    date_of_birth DATE,
    PRIMARY KEY(id)
);

/* DROP */
DROP TABLE customers;

/* ALTER */
ALTER TABLE customers
ADD COLUMN email VARCHAR(45) NOT NULL;

ALTER TABLE customers
MODIFY COLUMN email VARCHAR(30) NOT NULL;

ALTER TABLE customers
DROP COLUMN email;

/* DML ------------------------------------------------------------------ */

/* INSERT */
INSERT INTO customers (first_name, last_name, address, age, date_of_birth, email )
VALUES
("Nama", "Belakang", "Jalan2", 213, "1900-03-12", "dsad@gmail.com"),
("Rudi", "Belakang", "Jalan2", 213, "1900-03-12", "rudi@gmail.com"),
("Abc", "Belakang", "Jalan2", 213, "1900-03-12", "abc@gmail.com"),
("Warlock", "Belakang", "Jalan2", 213, "1900-03-12", "war@gmail.com")
;

/* SELECT */
SELECT * FROM customers;

SELECT first_name, last_name FROM customers;

SELECT * FROM customers 
WHERE first_name="J";

SELECT * FROM customers
WHERE first_name="Rudi" OR id='1';

/* SELECT DISTINCT */
SELECT DISTINCT age
FROM customers;

/* SELECT LOGICAL OPERATOR */
SELECT * FROM customers
WHERE age > 100;

SELECT * FROM customers
WHERE age BETWEEN 100 AND 400;

/* SELECT LIKE */
SELECT * FROM customers
WHERE first_name LIKE "%udi";
SELECT * FROM customers 
WHERE first_name LIKE "%ud%";

/* TRUNCATE */
TRUNCATE TABLE customers;

/* FOREIGN KEY */
CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE(11,6) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `impact_byte`.`products` (`name`,`price`)
VALUES
("sabun", 2500),
("mie", 1500),
("kopi", 5000),
("baygon", 15000),
("autan", 1000);

CREATE TABLE orders (
	id INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY(product_id) REFERENCES products(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO orders(product_id,customer_id)
VALUES 
(1,1),
(2,1),
(4,1),
(4,1),
(3,1);

SELECT * FROM orders;

/* SELECT FROM MULTIPLE TABLE */
SELECT 
    o.id as order_id, c.first_name, c.last_name
FROM
    customers c,
    orders o
WHERE
    c.id = o.customer_id;

/* GROUP BY */
SELECT product_id, COUNT(product_id) FROM orders GROUP BY product_id;

/* ORDER BY */
SELECT * FROM orders ORDER BY product_id ASC;
SELECT * FROM orders ORDER BY product_id DESC;

/* SELECT FROM MULTIPLE TABLE */
SELECT 
    *
FROM
    products p,
    orders o
WHERE
    p.id = o.product_id;
/* ----- */
SELECT 
    p.name,p.price,o.order_date
FROM
    products p,
    orders o
WHERE
    p.id = o.product_id;
    
/* INNER JOIN */
SELECT 
    p.name, p.price, o.order_date
FROM
    products p
        INNER JOIN
    orders o ON p.id = o.product_id;
    
/* LEFT JOIN */
SELECT 
    p.name, p.price, o.order_date
FROM
    products p
        LEFT JOIN
    orders o ON p.id = o.product_id;
    
/* 3 TABLES */
SELECT 
    p.name,
    p.price,
    CONCAT(c.first_name, ' ', c.last_name) AS fullname,
    o.order_date
FROM
    products p,
    orders o,
    customers c
WHERE
    p.id = o.product_id
        AND o.customer_id = c.id;

/* SQL FUNCTIONS */
SELECT AVG(age) AS average FROM customers;
SELECT SUM(age) AS total FROM customers;
SELECT COUNT(age) FROM customers;
SELECT MIN(age) FROM customers;
SELECT MAX(age) FROM customers;