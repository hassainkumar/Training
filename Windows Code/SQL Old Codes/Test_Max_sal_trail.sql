SELECT MAX(Salary)
From (SELECT max(Pay.Rate*Pay.PayFrequency) Salary 
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by Dep.DepartmentID, Dep.Name)