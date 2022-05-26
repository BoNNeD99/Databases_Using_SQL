USE [master]
GO

DROP DATABASE IF EXISTS [SEDCACADEMYDB]
GO

CREATE DATABASE [SEDCACADEMYDB]
GO

USE [SEDCACADEMYDB]
GO

DROP TABLE IF EXISTS [Student]
DROP TABLE IF EXISTS [Teacher]
DROP TABLE IF EXISTS [Grade]
DROP TABLE IF EXISTS [Course]
DROP TABLE IF EXISTS [GradesDetails]
DROP TABLE IF EXISTS [AchievementType]


CREATE TABLE [Student]
(
[Id][int] NOT NULL,
[FirstName][nvarchar](100) NOT NULL,
[LastName][nvarchar](100) NOT NULL,
[DateOfBirth][date] NULL,
[EnrolledDate][date] NULL,
[Gender][nvarchar](1) NULL,
[NationalldNumber][nvarchar](20) NULL,
[StudentCardNumber][nvarchar](20) NULL,
)
CREATE TABLE [Teacher]
(
[Id][int] NOT NULL,
[FirstName][nvarchar](100) NOT NULL,
[LastName][nvarchar](100) NOT NULL,
[DateOfBirth][date] NULL,
[AcademicRank][nvarchar](50) NOT NULL,
[HireDate][date] NOT NULL,
)
CREATE TABLE [Grade]
(
[Id][int] NOT NULL,
[StudentId][int] NOT NULL,
[CourseId][int] NOT NULL,
[TeacherId][int] NOT NULL,
[Grade][decimal](2,1) NULL,
[Comment][nvarchar](MAX) NULL,
[CratedDate][date] NULL,
)
CREATE TABLE [Course]
(
[Id][int] NOT NULL,
[Name][nvarchar](50) NOT NULL,
[Credit][decimal](2,2) NOT NULL,
[AcademicYear][smallint] NOT NULL,
[Semester][nvarchar](20) NOT NULL,
)
CREATE TABLE [GradesDetails]
(
[Id][int] NOT NULL,
[GradeId][int] NOT NULL,
[AchievementTypeId][int] NULL,
[AchievementPoints][smallint] NULL,
[AchievementMaxPoints][smallint] NULL,
[AchievementDate][date] NOT NULL,
)
CREATE TABLE [AchievementType]
(
[Id][int] NOT NULL,
[Name][nvarchar](50) NOT NULL,
[Description][nvarchar](MAX) NULL,
[ParticipationRate][decimal](5,2) NOT NULL
)



SELECT * FROM [Student]
SELECT * FROM [Teacher]
SELECT * FROM [Grade]
SELECT * FROM [Course]
SELECT * FROM [GradesDetails]
SELECT * FROM [AchievementType]