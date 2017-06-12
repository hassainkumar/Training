
SELECT max(Pay.Rate*Pay.PayFrequency) Salary
     -- CONCAT(Psn.FirstName,Psn.MiddleName,Psn.LastName) as Emp_Name
      FROM [AdventureWorks2014].[Person].[Person] Psn
	  
	  JOIN [AdventureWorks2014].[HumanResources].[EmployeePayHistory] Pay 
	  ON Pay.BusinessEntityID=Psn.BusinessEntityID
	  --Group by Pay.BusinessEntityID
--	  Where Psn.FirstName is not null and Psn.LastName is not null and Psn.MiddleName is not null