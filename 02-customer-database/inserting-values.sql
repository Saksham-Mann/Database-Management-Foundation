INSERT INTO Customer (CustomerID, CustomerName, Gender, Age, City, Email) VALUES
('C8814', 'Arjun Sharma', 'Male', 34, 'Tokyo', 'arjun.sharma@email.com'),
('C2188', 'Priya Patel', 'Female', 28, 'London', 'priya.patel@email.com'),
('C4608', 'Rohan Desai', 'Male', 45, 'New York', 'rohan.d@email.com'),
('C2559', 'Ananya Singh', 'Female', 22, 'London', 'ananya.s@email.com'),
('C9482', 'Vikram Joshi', 'Male', 31, 'Paris', 'v.joshi@email.com'),
('C8483', 'Neha Gupta', 'Female', 27, 'Paris', 'neha.g@email.com'),
('C8317', 'Karan Mehta', 'Male', 50, 'New York', 'karan.mehta@email.com'),
('C1011', 'Sneha Reddy', 'Female', 38, 'Tokyo', 'sneha.reddy@email.com'),
('C2045', 'Aditya Iyer', 'Male', 25, 'London', 'aditya.i@email.com'),
('C7732', 'Pooja Verma', 'Female', 41, 'New York', 'pooja.v@email.com');


INSERT INTO Transaction (TransactionID, CustomerID, TransactionDate, ProductName, Quantity, UnitPrice, TotalAmount) VALUES
('T890075', 'C8814', '2023-04-11', 'Product C', 2, 471.65, 943.30),
('T176819', 'C2188', '2023-04-11', 'Product A', 1, 463.70, 463.70),
('T340062', 'C4608', '2023-04-11', 'Product A', 1, 80.28, 80.28),
('T239145', 'C2559', '2023-04-11', 'Product A', 2, 110.64, 221.28),
('T194545', 'C9482', '2023-04-11', 'Product A', 1, 739.56, 739.56),
('T691194', 'C8483', '2023-04-11', 'Product C', 1, 375.23, 375.23),
('T826847', 'C8317', '2023-04-11', 'Product B', 1, 272.56, 272.56),
('T100001', 'C1011', '2023-04-12', 'Product D', 3, 150.00, 450.00),
('T100002', 'C2045', '2023-04-12', 'Product C', 1, 890.50, 890.50),
('T100003', 'C7732', '2023-04-13', 'Product A', 2, 300.00, 600.00),
('T100004', 'C8814', '2023-04-14', 'Product B', 1, 125.75, 125.75),
('T100005', 'C2188', '2023-04-15', 'Product D', 4, 100.00, 400.00),
('T100006', 'C4608', '2023-04-16', 'Product C', 1, 560.20, 560.20),
('T100007', 'C2559', '2023-04-17', 'Product B', 2, 210.00, 420.00),
('T100008', 'C9482', '2023-04-18', 'Product D', 1, 315.00, 315.00),
('T100009', 'C8483', '2023-04-19', 'Product A', 3, 150.00, 450.00),
('T100010', 'C8317', '2023-04-20', 'Product C', 1, 920.00, 920.00),
('T100011', 'C1011', '2023-04-21', 'Product B', 2, 340.00, 680.00),
('T100012', 'C2045', '2023-04-22', 'Product A', 1, 780.00, 780.00),
('T100013', 'C7732', '2023-04-23', 'Product D', 5, 110.00, 550.00);
