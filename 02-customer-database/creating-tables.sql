-- Customer table: stores basic personal information for each customer.
CREATE TABLE customer (
    CustomerID VARCHAR(5) PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    Gender VARCHAR(6),
    Age INT CHECK (Age BETWEEN 0 AND 100),
    City VARCHAR(20),
    Email VARCHAR(30)
);

-- Display the customer table structure.
\d customer

-- Transaction table: stores purchase details linked to a customer.
CREATE TABLE transaction (
    TransactionID VARCHAR(7) PRIMARY KEY,
    CustomerID VARCHAR(5),
    TransactionDate VARCHAR(10) NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    Quantity INT,
    UnitPrice FLOAT DEFAULT 0.0,
    TotalAmount FLOAT DEFAULT 0.0
);

-- Display the transaction table structure.
\d transaction
