USE [AdventureWorksDW2022]
GO

SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] As Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  Left([EnglishMonthName], 3) As Month --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] As [Month no.], 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year --,[CalendarSemester]
  -- ,[FiscalQuarter] 
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [dbo].[DimDate] 
where 
  CalendarYear >= 2019 -- need data for last two years from now(2021,2022,2023)

GO



/* Counting records in above created new table from dimdate, using subquery*/
-- total 1095 records

Select COUNT(*)
from  (SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] As Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  Left([EnglishMonthName], 3) As Month --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] As [Month no.], 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year --,[CalendarSemester]
  -- ,[FiscalQuarter] 
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [dbo].[DimDate] 
where 
  CalendarYear >= 2021) As Subquery


