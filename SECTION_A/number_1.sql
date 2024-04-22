/*CREATE TABLE employees(
	id INT PRIMARY KEY,
	name VARCHAR(255),
	salary DECIMAL(10,2),
	department_id INT,
	hire_date DATE

);*/

/*CREATE TABLE departments(
	id INT PRIMARY KEY,
	name VARCHAR(255)

);*/

/*INSERT INTO departments(id,name)
VALUES(1,'Engineering'),
(2,'Sales'),
(3,'Marketing'),
(4,'HR');*/

/*INSERT INTO employees(id,name,salary,department_id,hire_date)
VALUES(1,'Alice',60000.00,1,'2020-01-01'),
(2,'Bob',70000.00,1,'2020-01-15'),
(3,'Charlie',80000.00,2,'2020-02-01'),
(4,'Dave',90000.00,3,'2020-02-15'),
(5,'Eve',10000.00,4,'2020-03-01');*/

/*SELECT e.name, e.salary, e.department_id
FROM employees e
JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) emax ON e.department_id = emax.department_id AND e.salary = emax.max_salary;*/

/*SELECT name, hire_date, department_id
FROM (
    SELECT
        name,
        hire_date,
        department_id,
        ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY hire_date ASC) AS hire_date_row
    FROM employees
) ranked_employees
WHERE hire_date_row = 1;*/

SELECT e.name, e.salary, e.department_id
FROM employees e
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary;




