USE [AdventureWorks2014]
GO
/****** Object:  StoredProcedure [dbo].[BusEnId1]    Script Date: 3/29/2017 4:32:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER  PROCEDURE [dbo].[BusEnId1] @BuEnId1 nvarchar(10)
AS 
BEGIN 
   SELECT COUNT(*)
   FROM Person.Person
   Where BusinessEntityID<@BuEnId1
END;