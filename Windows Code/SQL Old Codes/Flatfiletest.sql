/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 'hell',*
  FROM [FRIENDS].[dbo].[flatfiletest]
  select * from test;

  alter table [FRIENDS].[dbo].[flatfiletest] drop column id;
  alter table [FRIENDS].[dbo].[flatfiletest] add  id int identity  ;

  alter table [FRIENDS].[dbo].[flatfiletest]
  add test uniqueidentifier not null default newid();
  
  alter table friends.dbo.flatfiletest
  drop column test;

  alter table friends.dbo.flatfiletest
  drop constraint DF__flatfiletest__id__0697FACD,DF__flatfilete__test__66EA454A ;

  -- wont work

  --alter table [FRIENDS].[dbo].[flatfiletest]
  --add constraint not null for test;