--TASK2
SELECT * FROM Departments
--TASK3
SELECT Name FROM Departments
--TASK4
SELECT FirstName, LastName, Salary FROM Employees
--TASK5
SELECT FirstName
, MiddleName
, LastName 
FROM Employees
--TASK6
SELECT FirstName + '.' + LastName + '@softuni.bg' 
AS [Full Email Address] 
FROM Employees
--TASK7
SELECT DISTINCT Salary FROM Employees 
--TASK8
SELECT * FROM Employees WHERE [JobTitle] = 'Sales Representative'
--TASK9
SELECT [FirstName], [LastName], [JobTitle] FROM [Employees] 
WHERE [Salary] >= 20000 AND [Salary] <= 30000 
--TASK10
SELECT CONCAT([FirstName],' ', [MiddleName],' ', [LastName]) 
    AS [Full Name]
  FROM [Employees] 
 WHERE [Salary] IN (25000, 14000, 12500, 23600)  
 --TASK11
 SELECT [FirstName],[LastName] FROM [Employees]
 WHERE [ManagerID] IS NULL
 --TASK12
 SELECT [FirstName], [LastName], [Salary] FROM [Employees]
 WHERE [Salary] > 50000
 ORDER BY [Salary] DESC
 --TASK13
 SELECT TOP(5) [FirstName],[LastName] FROM [Employees]
 ORDER BY [Salary] DESC
 --TASK14
 SELECT [FirstName], [LastName] FROM [Employees]
 WHERE [DepartmentID] <> 4
 --TASK15
 SELECT * FROM [Employees]
 ORDER BY [Salary] DESC,
	      [FirstName],
		  [LastName] DESC,
		  [MiddleName]

--TASK16

GO
CREATE VIEW [V_EmployeesSalaries]
  AS
		(
		SELECT [FirstName],[LastName], [Salary]
		FROM Employees
		
		)
GO


--TASK17
GO
CREATE VIEW [V_EmployeeNameJobTitle] 
AS (SELECT CONCAT([FirstName], ' ',[MiddleName], ' ',[LastName])
		AS [Full Name], [JobTitle]
		FROM Employees)
GO
--TASK18
SELECT DISTINCT [JobTitle] FROM [Employees]
ORDER BY [JobTitle]

--TASK19
SELECT TOP(10) * FROM [Projects]
ORDER BY [StartDate],
		 [Name]

--TASK20
SELECT TOP(7) [FirstName], [LastName], [HireDate] 
FROM [Employees]
ORDER BY [HireDate] DESC

--TASK21
UPDATE [Employees]
	SET[Salary] += 0.12 * [Salary]
	WHERE [DepartmentID] IN (1,2,4,11)

SELECT [Salary] FROM [Employees]

--TASK22

SELECT PeakName FROM Peaks
ORDER BY PeakName

--“¿— 23

USE Geography
SELECT TOP(30) [CountryName], [Population] 
FROM [Countries]
WHERE [ContinentCode] = 'EU'
ORDER BY [Population] DESC,
		[CountryName]

--TASK24

SELECT [CountryName],[CountryCode],
CASE [CurrencyCode]
WHEN 'EUR' THEN 'Euro'
ELSE 'Not Euro'
END
AS 'Currency'
FROM Countries
ORDER BY CountryName

--TASK25

USE Diablo

SELECT [Name] 
	FROM Characters
	ORDER BY [Name] ASC