-- ST4015CMD: Task 3 - Relational Queries
-- Reconstructing the membership list using JOINs

SELECT 
    Student.StudentName, 
    Club.ClubName, 
    Membership.JoinDate
FROM Student
JOIN Membership ON Student.StudentID = Membership.StudentID
JOIN Club ON Membership.ClubName = Club.ClubName;