-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS [CustomerKey], 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
  c.FirstName AS [First Name], 
  --      ,[MiddleName]
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + [LastName] AS [Full Name], 
  -- Combined First and Last Name
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender],
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.DateFirstPurchase AS [DateFirstPurchase], 
  --      ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
