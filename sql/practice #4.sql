-- Functions

-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find out number of employees with supervisors
SELECT COUNT(super_id)
FROM employee;

-- Find out total number of employees  who are female and born after 1971
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND dob>'1971-01-01';

-- Find out avg salary of employees
SELECT AVG(salary)
FROM employee;

-- Find out avg salary of male employees
SELECT AVG(salary)
FROM employee
WHERE sex ='M';

-- Find out total salary of employees
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are of 
SELECT COUNT(sex),sex
FROM employee
GROUP BY sex;

-- Find out total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Find out total amount of money spent by each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;
-- -----------------------------------------------------------

-- Wildcards

-- Find any client's who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%label%'; 

-- Find any employee born in February
SELECT *
FROM employee
WHERE dob LIKE '____-02%';

-- Find any clients who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';
-- ------------------------------------------------------------

-- UNION

SELECT first_name AS 'names'
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
From client;

SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

SELECT employee.salary 
FROM employee
UNION
SELECT works_with.total_sales
FROM works_with;
-- --------------------------------------------------------------------

-- JOINS

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT client.client_id, client.client_name, works_with.total_sales
FROM client
JOIN works_with
ON client.client_id = works_with.client_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;
-- -------------------------------------------------------------------

-- Nested Query

-- Find names of all employees who have sold over 30,000 to a single client
SELECT *
FROM works_with
WHERE works_with.total_sales > 30000;

SELECT employee.emp_id, employee.first_name, employee.last_name, works_with.total_sales
FROM employee
JOIN works_with
ON employee.emp_id = works_with.emp_id
WHERE employee.emp_id IN(
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);

SELECT employee.emp_id AS 'ID', employee.first_name AS 'First Name', employee.last_name AS 'Last Name', SUM(works_with.total_sales) AS 'Total Sales'
FROM employee
JOIN works_with
ON employee.emp_id = works_with.emp_id
WHERE employee.emp_id IN(
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
)
GROUP BY works_with.emp_id;

-- Find all cilents who are handled by the branch that Michael Scott manages. Assume you know Michael's ID
SELECT *
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE mgr_id IN (
        SELECT employee.emp_id
        FROM employee
        WHERE employee.first_name = 'Michael'
    )
);
-- ------------------------------------------------------

-- ON DELETE

DELETE FROM employee
WHERE emp_id = 102;

SELECT * 
FROM branch;

SELECT *
FROM employee;

SELECT *
FROM works_with;