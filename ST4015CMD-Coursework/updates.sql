-- Task 3: Late-stage additions (DML Updates)
-- As seen in the MySQL terminal screenshots

-- Adding the 8th Student
INSERT INTO Student (StudentID, StudentName, Email) 
VALUES (8, 'Ram', 'ram@email.com');

-- Adding the Art Club with Ms. Pramila
INSERT INTO Club (ClubName, ClubRoom, ClubMentor) 
VALUES ('Art Club', 'R404', 'Ms.Pramila');

-- Verification Queries
SELECT * FROM Student;
SELECT * FROM Club;