/*Cleaning and Transforming customer Table*/


Select 
  customerkey AS CustomerKey, 
  firstname AS [First Name], 
  --      ,[MiddleName]
  lastname AS [Last Name], 
  firstname + ' ' + lastname AS [Full Name], 
  -- Combined First and Last Name
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  City
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] As c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC