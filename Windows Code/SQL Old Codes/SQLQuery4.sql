DECLARE @AddressCount int
EXEC dbo.trail2 @City='Calgary', @AddressCount=@AddressCount OUTPUT
SELECT @AddressCount