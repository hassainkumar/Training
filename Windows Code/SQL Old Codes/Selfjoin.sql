-- Self join practise

create tabLE emp(
Empid int identity,
Name varchar(20),
Magid int
);

insert  
into emp values ('SAM',5),
  ('MAX',4)
,  ('MIN',3)
, ('TIM',NULL)
, ('PAM',2)
, ('WAM',5)

UPDATE EMP
SET Magid=1
WHERE Name='WAM';

SELECT * FROM emp;

SELECT E.Name,M.Name
FROM emp E
RIGHT JOIN EMP M
ON E.Empid=M.Magid;

SELECT E.Name,M.Name
FROM emp E
LEFT JOIN EMP M
ON E.Empid=M.Magid;

SELECT E.Name,M.Name
FROM emp E
 JOIN EMP M
ON E.Empid=M.Magid


--Common Table Expression practise

with empy(Id, Name)
as(
SELECT Empid,Name FROM emp
),
magy(id, Name) as
(
select Magid,Name from emp
)
select * from empy
union
select * from magy

--SQL query to get hierachy of the oraganisation

Create table Employees
(
EmployeeID int primary key identity,
EmployeeName nvarchar(50),
ManagerID int foreign key references Employees(EmployeeID)
)
GO

Insert into Employees values ('John', NULL)
Insert into Employees values ('Mark', NULL)
Insert into Employees values ('Steve', NULL)
Insert into Employees values ('Tom', NULL)
Insert into Employees values ('Lara', NULL)
Insert into Employees values ('Simon', NULL)
Insert into Employees values ('David', NULL)
Insert into Employees values ('Ben', NULL)
Insert into Employees values ('Stacy', NULL)
Insert into Employees values ('Sam', NULL)
GO

Update Employees Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara')
Update Employees Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon')
Update Employees Set ManagerID = 3 Where EmployeeName IN ('Tom')
Update Employees Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam')
Update Employees Set ManagerID = 4 Where EmployeeName IN ('David')
GO

select * from Employees

use FRIENDS;
declare @id int;
set @id=7;

with empcte
as
(
select * from Employees
where EmployeeID=@ID
union ALL
select Employees.EmployeeID,Employees.EmployeeName,Employees.ManagerID 
from Employees
join empcte
on Employees.EmployeeID=empcte.ManagerID

)

select e1.EmployeeName,isnull(e2.EmployeeName,'No Boss') from empcte e1
left join empcte e2
on e2.EmployeeID=e1.ManagerID


-- DELETE AND TRUNCATE 
rollback
delete from Employees where EmployeeID=7;

