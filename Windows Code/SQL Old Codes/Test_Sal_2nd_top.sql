-- 2nd top salary in the departments

SELECT top(1) max(Pay.Rate*Pay.PayFrequency) Salary, Dep.DepartmentID DepID, Dep.Name 
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by Dep.DepartmentID, Dep.Name
HAVING 
max(Pay.Rate*Pay.PayFrequency)<

(SELECT TOP (1) max(Pay.Rate*Pay.PayFrequency) Salary 
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by Dep.DepartmentID, Dep.Name
ORDER BY Salary DESC)


ORDER BY Salary DESC;

SELECT max(Pay.Rate*Pay.PayFrequency) Salary, Dep.DepartmentID DepID, Dep.Name 
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by Dep.DepartmentID, Dep.Name
ORDER BY Salary DESC;