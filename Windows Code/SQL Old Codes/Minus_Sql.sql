
SELECT His.DepartmentID from HumanResources.Department Dep
LEFT JOIN HumanResources.EmployeeDepartmentHistory His
ON His.DepartmentID=Dep.DepartmentID
where His.DepartmentID is  null
Group by His.DepartmentID;