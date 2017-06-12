SELECT Sub2.BusinessEntityID,Sub2.DepName,Sub2.DepID,Sub2.Name,Sub2.Salary

From
(SELECT 
His.BusinessEntityID,
Pay.Rate*Pay.PayFrequency Salary, 
Dep.DepartmentID DepID,
 Dep.Name DepName,
(Psn.FirstName+' '+(Case When Psn.MiddleName is Null Then '' Else Psn.MiddleName end)+' '+psn.LastName) Name

FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His

JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID

JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID

JOIN  [AdventureWorks2014].[Person].[Person] Psn
ON Psn.BusinessEntityID=His.BusinessEntityID) Sub2

Inner JOIN 

(SELECT max(Pay.Rate*Pay.PayFrequency) Salary, Dep.DepartmentID DepID, Dep.Name DName
FROM [AdventureWorks2014].[HumanResources].[EmployeeDepartmentHistory] His
JOIN  [AdventureWorks2014].[HumanResources].[Department] Dep
ON Dep.DepartmentID=His.DepartmentID
JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
ON Pay.BusinessEntityID=His.BusinessEntityID
Group by Dep.DepartmentID, Dep.Name) Sub1
ON Sub1.DepID=Sub2.DepID and Sub1.Salary= Sub2.Salary and Sub1.DName=Sub2.DepName
ORDER by Salary Desc

--Where Sub1.DepID=His.DepartmentID and Sub1.Salary= Salary and Sub1.DName=Dep.Name