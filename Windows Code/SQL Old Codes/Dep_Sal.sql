SELECT max(Pay.Rate*Pay.PayFrequency) Salary, His.DepartmentID DepID  
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by His.DepartmentID;