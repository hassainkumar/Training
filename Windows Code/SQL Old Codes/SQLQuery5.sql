USE [AdventureWorks2014]
GO
CREATE PROCEDURE trail2 @City nvarchar(30), @AddressCount int OUT
AS
SELECT @AddressCount = count(*) 
FROM AdventureWorks2014.Person.Address 
WHERE City = @City
