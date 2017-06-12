use FRIENDS;

CREATE TABLE Person
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

use FRIENDS;
exec sp_help Person;

ALTER TABLE Person
add unique(p_id);

ALTER TABLE Person
add constraint uc_person unique(lastname,firstname);

ALTER TABLE Person
drop constraint UQ__Person__A3420A5656510F54;

ALTER TABLE Person
add primary key (p_id);

--distinct is used to retrive records which are not same
--when we use INTO (table name) before From it will create a new table for the result

select distinct empcount,dep into FRIENDS.dbo.distincttest from FRIENDS.dbo.flatfiletest


select replace(location,'"',''),len(id),* 
from 
FRIENDS.dbo.flatfiletest



select * 
from 
FRIENDS.dbo.flatfiletest
where empcount between 10 and 20;


select * 
from 
FRIENDS.dbo.flatfiletest
where empcount like 10 and 20;

use FRIENDS
go
create view test
as
select empcount,replace(dep,'"','') Dep,replace(location,'"','') Location from friends.dbo.flatfiletest

select * from test

select * from Person;

alter table person drop column p_id constraint UQ__Person__A3420A56878C132F; 
P_id;


alter table person add P_id int not null primary key identity(1,1);

alter table person alter column lastname varchar(225) null

alter table person alter column city varchar(225) default newid(); 
alter table person  drop constraint uc_person;

alter table person
add unique(firstname),unique(lastname);

alter table person
add check(p_id>3);

alter table person drop constraint 
UQ__Person__7449F399C26C88FF,UQ__Person__B31331C91F06C60E,CK__Person__P_id__6ABAD62E


delete from Person 
insert into Person values('sam','y','hyd','ind');
insert into Person values('y','sam','hyd','ind');
insert into Person values('sam','d','hyd','ind');

exec sp_help person