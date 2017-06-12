USE AdventureWorks2014
GO

CREATE PROCEDURE Combine1
AS
BEGIN

Exec AdventureWorks2014.[dbo].[BusEnId1] @BuEnId1=10
DECLARE @AddressCount int
EXEC dbo.trail2 @City='Calgary', @AddressCount=@AddressCount OUTPUT
SELECT @AddressCount
END;