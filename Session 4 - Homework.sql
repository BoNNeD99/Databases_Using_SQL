USE [SEDC]
GO

--Calculate the total amount on all orders in the system
SELECT SUM(TotalPrice) AS [Total amount of orders] FROM Orders
GO

--Calculate the total amount per BusinessEntity on all orders in the system
SELECT b.[Name], SUM(TotalPrice) AS [Total amount of orders] FROM Orders o
JOIN BusinessEntities b ON b.Id = o.BusinessEntityId
GROUP BY b.[Name],o.CustomerId
GO

--Calculate the total amount per BusinessEntity on all orders in the system from Customers with ID < 20
SELECT b.[Name],o.CustomerId, SUM(TotalPrice) AS [Total amount of orders] FROM Orders o
JOIN BusinessEntities b ON b.Id = o.BusinessEntityId 
WHERE o.CustomerId < 20
GROUP BY b.[Name],o.CustomerId
GO

--Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system
SELECT b.[Name], MAX(TotalPrice) AS [Maximal order amount],AVG(TotalPrice) AS [Average order amount] FROM Orders o
JOIN BusinessEntities b ON b.Id = o.BusinessEntityId 
GROUP BY b.[Name]
GO