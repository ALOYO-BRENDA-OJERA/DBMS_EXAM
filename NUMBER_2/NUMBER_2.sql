/*CREATE TABLE employees(
	id INTEGER PRIMARY KEY,
	Name VARCHAR(255) NOT NULL,
	Age VARCHAR(255)NOT NULL,
	Address VARCHAR(255)NOT NULL
	

);*/

/*INSERT INTO employees(id,Name,Age,Address)
VALUES(1001,'Rohan','26','Delhi'),
(1002,'Ankit','30','Gurgaon'),
(1003,'Gaurav','27','Mumbai'),
(1004,'Raja','32','Nagpur');*/

--SELECT * FROM employees;

/*SELECT Name,Age,Address
FROM employees 
WHERE id=1004;*/

--SELECT * FROM employees;

/*SELECT Name, Age, Address
FROM employees
WHERE Name LIKE 'R%';*/

/*SELECT id, Age, Name
FROM employees
ORDER BY Age ASC;*/

/*SELECT id, Age, Name
FROM employees
ORDER BY Age DESC;*/

SELECT DISTINCT Address 
FROM employees;





