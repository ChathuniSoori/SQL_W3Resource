
-- Original table with partial dependency.
CREATE TABLE Office(
    squadId INT,
    squadLeadId INT,
    squadName VARCHAR(50),
    squadLeadName VARCHAR(50)
);
CREATE TABLE Squad(
    squadId INT PRIMARY KEY,
    squadName VARCHAR(50)
);
CREATE TABLE Lead(
    squadLeadId INT PRIMARY KEY,
    squadLeadName VARCHAR(50)

);
CREATE TABLE Office_2NF(
    squadId INT,
    squadLeadId INT,
    PRIMARY KEY (squadId, squadLeadId), 
    FOREIGN KEY (squadId) REFERENCES Squad(squadId),
    FOREIGN KEY (squadLeadId) REFERENCES Lead(squadLeadId)
);




