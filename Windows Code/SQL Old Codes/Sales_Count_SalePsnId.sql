/****** Script for SelectTopNRows command from SSMS  ******/
SELECT SalesPersonID,count(SalesOrderID) as Sales_Count
      
      
  FROM [AdventureWorks2014].[Sales].[SalesOrderHeader]
  where SalesPersonID is not null
  Group By SalesPersonID 