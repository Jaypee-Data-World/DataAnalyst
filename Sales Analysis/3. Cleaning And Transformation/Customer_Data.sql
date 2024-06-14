SELECT 
  c.customerkey As [customer key], 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName as [First Name], 
  --[MiddleName]
  c.LastName as [Last Name], 
  c.FirstName + ' ' + c.LastName as [Full Name], 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' End As Gender, 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.DateFirstPurchase as [Date First Purchase], --[CommuteDistance]
    g.city as [Customer City] 
FROM 
  [dbo].[DimCustomer] as c 
  left join [dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
order by 
  [customer key] ASC
