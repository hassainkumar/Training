USE FRIENDS
go

alter PROCEDURE addfrd  @name varchar(225), @email varchar(225)
AS

BEGIN 


INSERT INTO dbo.DETAIL(NAME,E_MAIL)
values (@name,@email);



END
GO