use SEDCACADEMYDB

create table [Student]
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

select * from Student

create table [Teacher]
(
[Id][int] NOT NULL,
[FirstName][nvarchar](100) NOT NULL,
[LastName][nvarchar](100) NOT NULL,
[DateOfBirth][date] NULL,
[AcademicRank][nvarchar](50) NOT NULL,
[HireDate][date] NOT NULL,
)

select * from Teacher

create table [Grade]
(
[Id][int] NOT NULL,
[StudentId][int] NOT NULL,
[CourseId][int] NOT NULL,
[TeacherId][int] NOT NULL,
[Grade][decimal](2,1) NULL,
[Comment][nvarchar](MAX) NULL,
[CratedDate][date] NULL,
)

select * from Grade

create table [Course]
(
[Id][int] NOT NULL,
[Name][nvarchar](50) NOT NULL,
[Credit][decimal](2,2) NOT NULL,
[AcademicYear][smallint] NOT NULL,
[Semester][nvarchar](20) NOT NULL,
)

select * from Course

create table [GradesDetails]
(
[Id][int] NOT NULL,
[GradeId][int] NOT NULL,
[AchievementTypeId][int] NULL,
[AchievementPoints][smallint] NULL,
[AchievementMaxPoints][smallint] NULL,
[AchievementDate][date] NOT NULL,
)

select * from GradesDetails

create table [AchievementType]
(
[Id][int] NOT NULL,
[Name][nvarchar](50) NOT NULL,
[Description][nvarchar](MAX) NULL,
[ParticipationRate][decimal](5,2) NOT NULL
)

select * from AchievementType