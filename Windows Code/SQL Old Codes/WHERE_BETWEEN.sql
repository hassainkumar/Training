/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [BusinessEntityID]
      ,COnVERT(DATE,ModifiedDate,10) Date
  FROM [AdventureWorks2014].[Person].[Person]
  
  WHERE ModifiedDate between '2009-01-07' and '2010-12-30'

