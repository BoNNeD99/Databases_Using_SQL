use SEDC

create table [BusinessEntity]
(
[Id][int] NOT NULL,
[Name][nvarchar](100) NULL,
[Region][nvarchar](1000) NULL,
[Zipcode][nvarchar](10) NULL,
[Size][nvarchar](10) NULL,
)

select * from BusinessEntity

create table [Employee]
(
[Id][int] NOT NULL,
[FirstName][nvarchar](100) NOT NULL,
[LastName][nvarchar](100) NOT NULL,
[DateOfBirth][date] NULL,
[Gender][nvarchar](1) NULL,
[HireDate][date] NULL,
[NationalldNumber][nvarchar](20) NULL,
)
select * from Employee

create table [Product]
(
[Id][int] NOT NULL,
[Code][nvarchar](50) NULL,
[Name][nvarchar](100) NULL,
[Description][nvarchar](MAX) NULL,
[Gender][nvarchar](1) NULL,
[Weight][decimal](18,2) NULL,
[Price][decimal](18,2) NULL,
[Cost][decimal](18,2) NULL,
)

select * from Product

create table [Customer]
(
[Id][int] NOT NULL,
[Name][nvarchar](100) NOT NULL,
[AccountNumber][nvarchar](50) NULL,
[City][nvarchar](100) NULL,
[RegionName][nvarchar](100) NULL,
[CustomerSize][nvarchar](10) NULL,
[PhoneNumber][nvarchar](20) NULL,
[isActive][Bit] NOT NULL,
)

select * from Customer

create table [Order]
(
[Id][bigint] NOT NULL,
[OrderDate][datetime] NULL,
[Status][smallint] NULL,
[BusinessEntityId][int] NULL,
[CustomerID][int] NULL,
[EmployeeID][int] NULL,
[TotalPrice][decimal](18,2) NULL,
[Comment][nvarchar](MAX) NULL,
)

select * from [Order]

create table [OrderDetails]
(
[Id][bigint] NOT NULL,
[OrderId][bigint] NULL,
[ProductId][int] NULL,
[Quantity][int] NULL,
[Price][decimal](18,2) NULL,
)

select * from OrderDetails
