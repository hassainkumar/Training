-- Employee count In each department

select COUNT(DepartmentID) Emp,DepartmentID
 
FROM AdventureWorks2014.HumanResources.EmployeeDepartmentHistory
Group by DepartmentID

ORDER BY Emp Desc