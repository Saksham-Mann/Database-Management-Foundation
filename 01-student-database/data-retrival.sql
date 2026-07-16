-- Basic data retrieval queries for the student database

-- 1. View all records from each table
SELECT * FROM Student_Details;
SELECT * FROM Parents_Details;
SELECT * FROM Marks;
SELECT * FROM Proctor_Details;

-- 2. Describe the structure of each table
\d Student_Details
\d Parents_Details
\d Proctor_Details
\d Marks

-- 3. Retrieve distinct values
SELECT DISTINCT ProcName FROM Proctor_Details;
SELECT DISTINCT School FROM Student_Details;
SELECT DISTINCT Course FROM Student_Details;

-- 4. Filter records using conditions
SELECT * FROM Parents_Details WHERE Address = 'New Delhi';
SELECT * FROM Marks WHERE Sub1 + Sub2 + Sub3 + Sub4 + Sub5 > 350;

-- 5. Count records based on conditions
SELECT COUNT(*) AS Total_Parents_From_New_Delhi FROM Parents_Details WHERE Address = 'New Delhi';

SELECT COUNT(*) AS Total_Students FROM Student_Details;

-- 6. Sort records in ascending or descending order
SELECT Name, RegNo, Course FROM Student_Details ORDER BY Name;

-- 7. Find total marks for each student
SELECT Name, RegNo, (Sub1 + Sub2 + Sub3 + Sub4 + Sub5) AS Total_Marks FROM Marks ORDER BY Total_Marks DESC;

-- 8. Join student details with marks
SELECT sd.Name, sd.RegNo, sd.Course, m.Sub1, m.Sub2, m.Sub3, m.Sub4, m.Sub5 FROM Student_Details AS sd JOIN Marks AS m ON sd.RegNo = m.RegNo;

-- 9. Join student details with proctor details
SELECT sd.Name, sd.RegNo, sd.Course, pd.ProcName, pd.Proc_email FROM Student_Details AS sd JOIN Proctor_Details AS pd ON sd.RegNo = pd.RegNo;

-- 10. Join student details with parent details
SELECT sd.Name, sd.RegNo, pd.FatherName, pd.MotherName, pd.Address FROM Student_Details AS sd JOIN Parents_Details AS pd ON sd.RegNo = pd.RegNo;