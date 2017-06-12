--Testing the foreign key
SELECT  his.DepartmentID,Dep.DepartmentID
FROM AdventureWorks2014.HumanResources.EmployeeDepartmentHistory His
LEFT OUTER JOIN AdventureWorks2014.HumanResources.Department Dep
ON His.DepartmentID=Dep.DepartmentID
WHERE Dep.DepartmentID is null
--Group by His.DepartmentID,Dep.Name;