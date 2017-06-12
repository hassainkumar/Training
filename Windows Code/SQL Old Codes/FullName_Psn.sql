SELECT BusinessEntityID,(FirstName+' '+(CASE 
When MiddleName is NULL Then ''
ELSE MiddleName
End)+' '+LastName) AS FullName
FROM AdventureWorks2014.Person.Person
Order bY BusinessEntityID