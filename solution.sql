CREATE TABLE Department (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);

CREATE TABLE Faculty (
FacultyID INT PRIMARY KEY,
FacultyName VARCHAR(50),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(50),
FacultyID INT,
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

CREATE TABLE Enrollment (
StudentID INT,
CourseID INT,
PRIMARY KEY (StudentID, CourseID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
Insert Values
INSERT INTO Department VALUES (101, 'Computer Science');
INSERT INTO Department VALUES (102, 'Information Technology');

INSERT INTO Faculty VALUES (1, 'Ravi', 101);
INSERT INTO Faculty VALUES (2, 'Priya', 102);

INSERT INTO Student VALUES (201, 'Arun', 101);
INSERT INTO Student VALUES (202, 'Kavi', 101);
INSERT INTO Student VALUES (203, 'Divya', 102);

INSERT INTO Course VALUES (301, 'DBMS', 1);
INSERT INTO Course VALUES (302, 'Java', 1);
INSERT INTO Course VALUES (303, 'Python', 2);

INSERT INTO Enrollment VALUES (201, 301);
INSERT INTO Enrollment VALUES (201, 302);
INSERT INTO Enrollment VALUES (202, 301);
INSERT INTO Enrollment VALUES (203, 303);
Display Tables
SELECT * FROM Department;

SELECT * FROM Faculty;

SELECT * FROM Student;

SELECT * FROM Course;

SELECT * FROM Enrollment;
