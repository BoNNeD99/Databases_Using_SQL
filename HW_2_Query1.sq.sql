USE [SEDC]
GO

--Finds all Employees with FirstName = 'Goran'
SELECT * FROM [Employees]
WHERE FirstName = 'Goran'

--Finds all Employees with LastName starting With ‘S’
SELECT * FROM [Employees]
WHERE LastName LIKE 'A%'

--Finds all Employees with DateOfBirth greater than ‘01.01.1988’
SELECT * FROM [Employees]
WHERE DateOfBirth > '1988-01-01'

--Finds all Male employees
SELECT * FROM [Employees]
WHERE Gender = 'M'

--Finds all employees hired in January/1998
SELECT * FROM [Employees]
WHERE HireDate BETWEEN '1998-01-01'  AND '1998-01-31'

--Finds all Employees with LastName starting With ‘A’ hired in January/1998
SELECT * FROM [Employees]
WHERE LastName LIKE 'A%' AND HireDate BETWEEN '1998-01-01'  AND '1998-01-31'