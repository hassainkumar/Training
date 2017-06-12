select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) AS Name
FROM AdventureWorks2014.Person.Person

DELETE FROM AdventureWorks2014.Person.Person
WHERE BusinessEntityID NOT IN 
(SELECT BusinessEntityID
FROM AdventureWorks2014.Person.Person
HAVING COUNT(CONCAT(FirstName,' ',MiddleName,' ',LastName))>1)
Order by CONCAT(FirstName,' ',MiddleName,' ',LastName)

/*(SELECT Min(BusinessEntityID),CONCAT(FirstName,' ',MiddleName,' ',LastName) AS Name /*, COUNT(CONCAT(FirstName,' ',MiddleName,' ',LastName))*/
FROM AdventureWorks2014.Person.Person
Group by CONCAT(FirstName,' ',MiddleName,' ',LastName))
Order by Min(BusinessEntityID)
--HAVING COUNT(CONCAT(FirstName,' ',MiddleName,' ',LastName))>1*/