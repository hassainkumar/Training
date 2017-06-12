create table customer(

ID int not null,
NAME varchar(20) not null,
Age int not null,
Salary decimal(18,2),
primary key(ID)

);

exec sp_columns customer; --to get the info of the table wethere it is created or not

alter table customer
add address varchar(25);