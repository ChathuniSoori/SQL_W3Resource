CREATE TABLE STUDENT_DETAILS(
    studentId INT PRIMARY KEY,
    studentName VARCHAR(50),
    studentEmail VARCHAR(100),
    studentCity VARCHAR(200),
    zipcode INT 
);

CREATE TABLE STUDENT_CITY_DETAILS(
    cityID INT PRIMARY KEY,
    zipcode INT,
    studentCity VARCHAR(200)
);

CREATE TABLE STUDENT_DETAILS_3NF(
    studentId INT PRIMARY KEY,
    studentName VARCHAR(50),
    studentEmail VARCHAR(100),
    cityID INT,
    FOREIGN KEY(cityID) REFERENCES STUDENT_CITY_DETAILS(cityID)
);