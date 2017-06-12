-- to create a database

CREATE DATABASE Practise;

CREATE DATABASE Practisetest;

--renaming a database
   --using alter command

ALTER DATABASE Practisetest
modify name=practiseDB

	-- using stored procedure

exec sp_renamedb 'practisedatabas' ,'practisedatabase'

-- deleting a database

drop database practisetest;

-- A database cant  be deleted when it is used by other user
-- so to delete a database that is in use we need to delete the connection first

	--disconnecting the connections
alter database practisetest 
set single_user
with rollback immediate;

	--deleting the database
drop database practisetest;

use Practise;

-- Creating a table

create table Gendertbl
(
ID int not null primary key identity,
Gender nvarchar(50) not null

);

--adding a foreign key

alter table persontbl
add foreign key(GenderID )
references gendertbl(ID) ;

--adding a identity (auto_incriment) to a column
-- cannot happen
-- drop the existing column and add new column with identity

alter table persontbl
add identity(id);

--adding default constraint

alter table persontbl
add constraint def_pk
default 3 for GenderID;


select * from persontbl;
select * from Gendertbl;

--to get details of the table

sp_help persontbl

create table person1tbl(
ID int not null identity,
Name nvarchar(50)
);

select * from person1tbl;

insert into person1tbl values ('sam'),('xam'),('cam'),('dam'),('max');

insert into person1tbl(id,name) values(1,'xam')

dbcc checkident(person1tbl,reseed,0)

set identity_insert person1tbl off

delete from person1tbl
where Name like'%m';