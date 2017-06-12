SELECT His.DepartmentID DepID,/*His.BusinessEntityID*/max(Pay.Rate*Pay.PayFrequency) Salary,  max(Psn.FirstName+' '+Psn.MiddleName+' '+Psn.LastName) Employee_Name  

FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His

JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID

JOIN  [AdventureWorks2014].[Person].[Person] Psn
ON Psn.BusinessEntityID=His.BusinessEntityID

Group by His.DepartmentID/*,Psn.FirstName*/;