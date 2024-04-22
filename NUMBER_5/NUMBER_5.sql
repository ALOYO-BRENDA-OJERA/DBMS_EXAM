/*CREATE TABLE Students(
	Sno SERIAL PRIMARY KEY,
	Sname VARCHAR,
	SGPA FLOAT,
	Scity VARCHAR(255),
	Cno VARCHAR(255)

);*/
/*
INSERT INTO Students(Sname,SGPA,Scity,Cno)
VALUES('Saman',2.60,'Kegalle','C1'),
('Kamal',2.45,'Kandy','C2'),
('Joe',3.20,'Galle','C3'),
('Ruwan',4.00,'Kandy','C1'),
('Asela',3.50,'Jaffna','C4'),
('Asanka',2.88,'Galle','C2'),
('Wasana',2.75,'Colombo','C3'),
('Dilini',3.35,'Kandy','C1'),
('Aruna',2.76,'Galle','C4'),
('Gayani',3.00,'Jaffna','C4');

SELECT * FROM Students;*/

/*
CREATE TABLE Courses(
	Cno VARCHAR(255) PRIMARY KEY,
	Cname VARCHAR(255),
	Cduration_years INTEGER
);*/

/*INSERT INTO Courses(Cno,Cname,Cduration_years)
VALUES('C1','HNDA',4),
('C2','HNDIT',2),
('C3','HNDM',3),
('C4','HNDE',2);

SELECT * FROM Courses;*/

--SELECT Sname, SGPA
--FROM Students;

/*SELECT Sname
FROM Students
WHERE SGPA > 3.00;*/

/*SELECT Cno, COUNT(*) AS num_students
FROM Students
GROUP BY Cno;*/

/*SELECT Students.Sname, Students.SGPA, Courses.Cname
FROM Students
JOIN Courses ON Students.Cno = Courses.Cno;*/

SELECT *
FROM Students
ORDER BY SGPA ASC;

/*(f)  the role of a database administrator is that he is responsible for
the overall health,security, and performance of databases within an organisation, ensuring
data is available,secure, and accessible to those who need it,while maintaining efficiency and compliance with standards.






