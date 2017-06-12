select 
BusinessEntityID,
CONCAT(BusinessEntityID,' ',FirstName,' ',MiddleName,' ',LastName,' ',EmailPromotion) as Combine

From AdventureWorks2014.Person.Person