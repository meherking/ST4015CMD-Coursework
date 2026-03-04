-- ST4015CMD: Task 3 - Database Schema (Normalized 3NF)
-- Based on CollegeClubs project data

-- 1. Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(100)
);

-- 2. Club Table
CREATE TABLE Club (
    ClubName VARCHAR(50) PRIMARY KEY,
    ClubRoom VARCHAR(10),
    ClubMentor VARCHAR(50)
);

-- 3. Membership Table
CREATE TABLE Membership (
    StudentID INT,
    ClubName VARCHAR(50),
    JoinDate DATE,
    PRIMARY KEY (StudentID, ClubName),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName)
);

-- 4. Inserting ALL Students from your spreadsheet
INSERT INTO Student (StudentID, StudentName, Email) VALUES 
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');

-- 5. Inserting ALL Clubs
INSERT INTO Club (ClubName, ClubRoom, ClubMentor) VALUES 
('Music Club', 'R101', 'Mr. Raman'),
('Sports Club', 'R202', 'Ms. Sita'),
('Drama Club', 'R303', 'Mr. Kiran'),
('Coding Club', 'Lab1', 'Mr. Anil');

-- 6. All Memberships (Handling students with multiple clubs like Asha/Bikash)
INSERT INTO Membership (StudentID, ClubName, JoinDate) VALUES 
(1, 'Music Club', '2024-01-10'),
(2, 'Sports Club', '2024-01-12'),
(1, 'Sports Club', '2024-01-15'),
(3, 'Music Club', '2024-01-20'),
(4, 'Drama Club', '2024-01-18'),
(5, 'Music Club', '2024-01-22'),
(2, 'Drama Club', '2024-01-25'),
(6, 'Sports Club', '2024-01-27'),
(3, 'Coding Club', '2024-01-28'),
(7, 'Coding Club', '2024-01-30');