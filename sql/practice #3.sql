-- Basic Queries

SHOW TABLES;

SELECT * FROM branch_supplier;

SELECT *
FROM client;

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
ORDER BY sex, first_name;

SELECT *
FROM employee
LIMIT 5;

SELECT first_name, last_name
FROM employee;

SELECT first_name AS "Fore Name", last_name AS "Sur  Name"
FROM employee;

SELECT DISTINCT sex,branch_id
FROM employee;

