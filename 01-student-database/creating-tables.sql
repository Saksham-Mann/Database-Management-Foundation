-- Table creation queries for student database

-- 1. Creating Student_Details Table
CREATE TABLE Student_Details (
    Name VARCHAR(50) NOT NULL,
    RegNo VARCHAR(9) PRIMARY KEY CHECK (length(RegNo) = 9),
    School VARCHAR(20),
    Course VARCHAR(20),
    Email VARCHAR(30),
    mobileNo VARCHAR(10) CHECK (length(mobileNo) = 10)
);

-- 2. Creating Student's Marks Table
CREATE TABLE Marks (
    Name VARCHAR(50) NOT NULL,
    RegNo VARCHAR(9) PRIMARY KEY CHECK (length(RegNo) = 9),
    Sub1 INTEGER DEFAULT 0 CHECK (Sub1 BETWEEN 0 AND 100),
    Sub2 INTEGER DEFAULT 0 CHECK (Sub2 BETWEEN 0 AND 100),
    Sub3 INTEGER DEFAULT 0 CHECK (Sub3 BETWEEN 0 AND 100),
    Sub4 INTEGER DEFAULT 0 CHECK (Sub4 BETWEEN 0 AND 100),
    Sub5 INTEGER DEFAULT 0 CHECK (Sub5 BETWEEN 0 AND 100)
);

-- 3. Creating Proctor_Details Table
CREATE TABLE Proctor_Details (
    Std_Name VARCHAR(50) NOT NULL,
    RegNo VARCHAR(9) PRIMARY KEY CHECK (length(RegNo) = 9),
    ProcName VARCHAR(50) NOT NULL,
    Proc_email VARCHAR(30),
    Proc_mobileNo VARCHAR(10) CHECK (length(Proc_mobileNo) = 10)
);

-- 4. Creating Parents_Details Table
CREATE TABLE Parents_Details (
    Std_Name VARCHAR(50) NOT NULL,
    RegNo VARCHAR(9) PRIMARY KEY CHECK (length(RegNo) = 9),
    FatherName VARCHAR(50) NOT NULL,
    Father_email VARCHAR(30),
    Father_mobileNo VARCHAR(10) CHECK (length(Father_mobileNo) = 10),
    MotherName VARCHAR(50) NOT NULL,
    Mother_email VARCHAR(30),
    Mother_mobileNo VARCHAR(10) CHECK (length(Mother_mobileNo) = 10),
    Address VARCHAR(100)
);