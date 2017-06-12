-- Display the deptID with max and min employeee in one query

SELECT *
FROM (select TOP(1) COUNT(DepartmentID) Emp,DepartmentID
 
FROM AdventureWorks2014.HumanResources.EmployeeDepartmentHistory
Group by DepartmentID
ORDER BY Emp) T1
UNION 
SELECT *
FROM (
select TOP(1) COUNT(DepartmentID) Emp,DepartmentID
 
FROM AdventureWorks2014.HumanResources.EmployeeDepartmentHistory
Group by DepartmentID
ORDER BY Emp DESC) T2


