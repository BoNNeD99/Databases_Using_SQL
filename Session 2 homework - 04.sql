USE [SEDC]
GO

--List all possible combinations of Customer names and Product names that can be ordered from specific customer
SELECT c.Name,  p.Name 
FROM Customers AS c 
CROSS JOIN Products AS p
ORDER BY c.Name ASC
GO
--List all Business Entities that has any order 

SELECT b.Id, b.[Name], o.BusinessEntityId FROM BusinessEntities AS b
JOIN Orders AS o ON b.Id = o.BusinessEntityId
ORDER BY b.Id
GO

--List all Entities without orders

SELECT b.Id, b.[Name], o.BusinessEntityId FROM BusinessEntities AS b
LEFT JOIN Orders AS o ON b.Id = o.BusinessEntityId
WHERE o.BusinessEntityId IS NULL
GO

----List all Customers without orders (using Right Join)
SELECT o.CustomerId, c.[Name] FROM Orders o 
RIGHT JOIN Customers c ON o.CustomerId IS NULL