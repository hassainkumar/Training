 /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [empcount]
      ,[dep]
      ,[location]
      ,[id]
  FROM [FRIENDS].[dbo].[flatfiletest]

  alter table [FRIENDS].[dbo].[flatfiletest]
  drop column id;

  alter table [FRIENDS].[dbo].[flatfiletest]
  ADD id uniqueidentifier primary key default newid();


  alter table [FRIENDS].[dbo].[flatfiletest]
  ADD unique(id);

  alter table [FRIENDS].[dbo].[flatfiletest]
  drop constraint id;

