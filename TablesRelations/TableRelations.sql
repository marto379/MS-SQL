CREATE DATABASE [EntityRelations2023]

GO

USE [EntityRelations2023]

GO
--TASK 1
CREATE TABLE [Passports]
(
	[PassportID] INT PRIMARY KEY IDENTITY(101,1),
	[PassportNumber] VARCHAR(8) NOT NULL
)

CREATE TABLE [Persons]
(
	[PersonID] INT PRIMARY KEY IDENTITY(1,1),
	[FirstName] VARCHAR(50) NOT NULL ,
	[Salary] DECIMAL(8,2) NOT NULL ,
	[PassportID] INT FOREIGN KEY REFERENCES [Passports]([PassportID]) UNIQUE NOT NULL 
)

INSERT INTO Passports ([PassportNumber])
	VALUES 
		('N34FG21B'),
		('K65LO4R7'),
		('ZE657QP2')

INSERT INTO Persons (FirstName, Salary, PassportId)
	VALUES
			('Roberto', 43300.00, 102),
			('Tom', 56100.00, 103),
			('Yana', 60200.00, 101)

--TASK 2
CREATE TABLE Manufacturers
(
	[ManufacturerID] INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) NOT NULL ,
	[EstablishedOn] DATETIME2 NOT NULL
)

CREATE TABLE Models
(
	[ModelID] INT PRIMARY KEY IDENTITY(101,1),
	[Name] VARCHAR(50) NOT NULL,
	[ManufacturerID] INT FOREIGN KEY REFERENCES [Manufacturers]([ManufacturerID]) NOT NULL 
)

INSERT INTO Manufacturers (Name, EstablishedOn)
		VALUES 
			('BMW', '07/03/1916'),
			('Tesla', '01/01/2003'),
			('Lada', '01/05/1966')

INSERT INTO Models ([Name], [ManufacturerID])

	VALUES
		('X1', 1),
		('i6', 1),
		('Model S', 2),
		('Model X', 2),
		('Model 3', 3),
		('Nova', 3)

		

--TASK 3
CREATE TABLE Students
(
	StudentsID INT PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL 
)

CREATE TABLE [Exams]
(
	ExamID INT PRIMARY KEY IDENTITY(101,1),
	[Name] VARCHAR(100) NOT NULL
)

CREATE TABLE StudentsExams
(
	[StudentID] INT FOREIGN KEY REFERENCES [Students]([StudentsID]),
	[ExamID] INT FOREIGN KEY REFERENCES [Exams]([ExamID]),
	PRIMARY KEY ([StudentID], [ExamID])
)

--TASK 4
CREATE TABLE Teachers
(
	[TeacherID] INT PRIMARY KEY  IDENTITY (101,1),
	[Name] NVARCHAR(50) NOT NULL,
	[ManagerID] INT FOREIGN KEY REFERENCES [Teachers]([TeacherID])
)

INSERT INTO Teachers([Name] , ManagerID)
VALUES 
	('John' , NULL),
	('Maya' , 106),
	('Silvia' , 106),
	('Ted' , 105),
	('Mark' , 101),
	('Greta' , 101)

	

--TASK 6 
CREATE DATABASE UniversityDatabase

GO

USE UniversityDatabase

GO

CREATE TABLE Majors
(
	MajorID INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Subjects
(
	SubjectID INT PRIMARY KEY IDENTITY,
	SubjectName NVARCHAR(100) NOT NULL
)

CREATE TABLE Students
(
	StudentID INT PRIMARY KEY IDENTITY,
	StudentNumber VARCHAR(20) NOT NULL,
	StudentName NVARCHAR(50) NOT NULL,
	MajorID INT FOREIGN KEY REFERENCES Majors(MajorID) NOT NULL
)

CREATE TABLE Agenda
(
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
	SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID),
	PRIMARY KEY(StudentID, SubjectID)
)

CREATE TABLE Payments
(
	PaymentID INT PRIMARY KEY IDENTITY,
	PaymentDate DATETIME2 NOT NULL,
	PaymentAmount DECIMAL(8,2) NOT NULL,
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID) NOT NULL
)

