--Values for STUDENT_DETAILS
\prompt 'Enter Name: ' n
\prompt 'Enter RegNo: ' r
\prompt 'Enter School: ' s
\prompt 'Enter Course: ' c
\prompt 'Enter Email: ' e
\prompt 'Enter MobileNo: ' m
INSERT INTO Student_Details VALUES (:'n', :'r', :'s', :'c', :'e', :'m');

--Values for Marks
\prompt 'Enter Name: ' n
\prompt 'Enter RegNo: ' r
\prompt 'Enter Sub1 (0-100): ' s1
\prompt 'Enter Sub2 (0-100): ' s2
\prompt 'Enter Sub3 (0-100): ' s3
\prompt 'Enter Sub4 (0-100): ' s4
\prompt 'Enter Sub5 (0-100): ' s5
INSERT INTO Marks VALUES (:'n', :'r', :s1, :s2, :s3, :s4, :s5);

--Values for PROCTOR_DETAILS
\prompt 'Enter Std_Name: ' sn
\prompt 'Enter RegNo: ' r
\prompt 'Enter ProcName: ' pn
\prompt 'Enter Proc_email: ' pe
\prompt 'Enter Proc_mobileNo: ' pm
INSERT INTO Proctor_Details VALUES (:'sn', :'r', :'pn', :'pe', :'pm');

--Values for PARENT_DETAILS
\prompt 'Enter Std_Name: ' sn
\prompt 'Enter RegNo: ' r
\prompt 'Enter FatherName: ' fn
\prompt 'Enter Father_email: ' fe
\prompt 'Enter Father_mobileNo: ' fm
\prompt 'Enter MotherName: ' mn
\prompt 'Enter Mother_email: ' me
\prompt 'Enter Mother_mobileNo: ' mm
\prompt 'Enter Address: ' a
INSERT INTO Parents_Details VALUES (:'sn', :'r', :'fn', :'fe', :'fm', :'mn', :'me', :'mm', :'a');