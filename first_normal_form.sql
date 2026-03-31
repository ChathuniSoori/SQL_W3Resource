CREATE TABLE STUDENTS(
    studentId INT PRIMARY KEY,
    studentName VARCHAR(50),
    studentEmail VARCHAR(50),
    studentPhone VARCHAR(50)
)


--INSERT INTO STUDENTS (studentId, studentName, studentEmail, studentPhone) VALUES (1, 'John Doe', 'john.doe@example.com', '1234567890', '0123456789');

INSERT INTO STUDENTS (studentId, studentName, studentEmail, studentPhone) 
VALUES (1, 'John Doe', 'john.doe@example.com', '1234567890');

INSERT INTO STUDENTS (studentId, studentName, studentEmail, studentPhone) 
VALUES (2, 'John Doe', 'john.doe@example.com', '0123456789');

CREATE TABLE STUDENTS_PHONES_1NF(
    phoneId INT PRIMARY KEY,
    studentId INT,
    phoneNumber VARCHAR(50),
    FOREIGN KEY (studentId) REFERENCES STUDENTS(studentId)
)





-- Original table with repeating groups.
CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductNames VARCHAR(MAX) -- Comma-separated list of products.
);

-- Normalize the table into 1NF by splitting repeating groups.
CREATE TABLE Orders_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100)
);

