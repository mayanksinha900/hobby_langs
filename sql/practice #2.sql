USE hr_sample;
SHOW TABLES;

SELECT employee_id, first_name, hire_date, job_id
FROM employees
ORDER BY first_name DESC;

SELECT employee_id, first_name, hire_date, salary, department_id
FROM employees
ORDER BY department_id, first_name;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 2;

SELECT * 
FROM employees
WHERE department_id IN (9,5,6) and salary>5000 ;