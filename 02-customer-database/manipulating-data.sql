-- Customer data manipulation operations for the customer database.

-- 1. Update a customer's city.
UPDATE customer
SET City = 'Berlin'
WHERE CustomerName = 'Ananya Singh';

-- 2. Delete a specific transaction record.
DELETE FROM transaction
WHERE TransactionID = 'T100008';

-- 3. Add a membership type column with allowed values.
ALTER TABLE customer
ADD COLUMN MembershipType VARCHAR(8)
CHECK (MembershipType IN ('Silver', 'Gold', 'Platinum'));

-- 4. Assign membership types to selected customers.
UPDATE customer
SET MembershipType = 'Gold'
WHERE CustomerID = 'C8814';

UPDATE customer
SET MembershipType = 'Platinum'
WHERE CustomerID = 'C2188';

UPDATE customer
SET MembershipType = 'Gold'
WHERE CustomerID = 'C4608';

UPDATE customer
SET MembershipType = 'Gold'
WHERE CustomerID = 'C9482';

UPDATE customer
SET MembershipType = 'Silver'
WHERE CustomerID = 'C8483';

UPDATE customer
SET MembershipType = 'Silver'
WHERE CustomerID = 'C8317';

UPDATE customer
SET MembershipType = 'Platinum'
WHERE CustomerID = 'C1011';

UPDATE customer
SET MembershipType = 'Silver'
WHERE CustomerID = 'C2045';

UPDATE customer
SET MembershipType = 'Gold'
WHERE CustomerID = 'C7732';

UPDATE customer
SET MembershipType = 'Silver'
WHERE CustomerID = 'C2559';

-- 5. Enforce uniqueness on customer email addresses.
ALTER TABLE customer
ADD CONSTRAINT unique_email UNIQUE (Email);

-- 6. Retrieve transactions with quantity greater than 3.
SELECT *
FROM transaction
WHERE Quantity > 3;

-- 7. View selected transaction summary information.
SELECT CustomerID, TotalAmount
FROM transaction;

-- 8. Create an index to improve transaction date lookups.
CREATE INDEX idx_transaction_date
ON transaction (TransactionDate);

-- 9. Increase unit prices for high-value products.
UPDATE transaction
SET UnitPrice = UnitPrice * 1.1
WHERE UnitPrice > 300;