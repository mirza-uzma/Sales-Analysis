/*Cleaning Product Table*/

SELECT [ProductKey]
      ,[ProductAlternateKey] As [Product Code]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS [Product Name]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] As [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] As [Product Line]
      --,[DealerPrice]
      ,[Class] AS [Product Class]
      --,[Style]
      ,[ModelName] AS [Product Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] As [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]

	  /* Replace NULL Values in Status with a value, using ISNULL*/
      ,ISNULL(Status, 'Outdated') As [Product Status]
	  ,[EnglishProductCategoryName] As Category -- Column joined from Category table
	  ,[EnglishProductSubcategoryName] As [Sub-Category] -- column joined from Sub-category table
	  
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
  left join dbo.DimProductSubcategory AS s ON p.ProductSubcategoryKey = s.ProductSubcategoryKey  -- Joining Subcategory table using subcategory product key
  left join dbo.DimProductCategory AS c ON s.ProductCategoryKey = c.ProductCategoryKey           -- joining Category table, using category key from Product table(Product table now contain category key*/