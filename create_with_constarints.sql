CREATE TABLE University(
    UniversityId int PRIMARY KEY,
    studentId int,
    modulName VARCHAR(50),
    moduleId int,
    studentEmail VARCHAR(100) UNIQUE,
    studentAge int CHECK (studentAge > 15)
)

CREATE TABLE STUDENTS(
    studentId int PRIMARY KEY,
    studentEmail VARCHAR(100) VARCHAR(100) UNIQUE,
    studentAge int CHECK (studentAge > 15)
)
CREATE TABLE Course(
    moduleName VARCHAR(50),
    moduleId int NOT NULL,
)

CREATE TABLE University_NF(
    UniversityId int PRIMARY KEY
    studentId int,
    moduleId int,
    FOREIGN KEY (studentId) REFERENCES STUDENTS(studentId),
    FOREIGN KEY (moduleIdId) REFERENCES Course(moduleIdId)
)