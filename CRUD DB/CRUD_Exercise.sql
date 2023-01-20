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
CREATE VIEW [V_EmployeesSalaries]
  AS
		(
		SELECT [FirstName],[LastName], [Salary]
		FROM Employees
		
		)

SELECT * FROM [V_EmployeesSalaries]

--TASK17
GO
CREATE VIEW [V_EmployeeNameJobTitle] 
AS (SELECT CONCAT([FirstName], ' ',[MiddleName], ' ',[LastName])
		AS [Full Name], [JobTitle]
		FROM Employees)
GO