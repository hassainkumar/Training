use AdventureWorks2014
go

Update PROCEDURE BusEnId1 @BuEnId1 nvarchar(10)
AS 
BEGIN 
   SELECT * 
   FROM Person.Person
   Where BusinessEntityID<@BuEnId1
END;