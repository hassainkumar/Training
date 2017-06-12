SELECT 
LEN(FirstName) as lenght,
CASE (LEN(FirstName)%2)
WHEn 0   THEN LEN(FirstName)/2
ELSE LEN(FirstName)/2+1
END 
FROM AdventureWorks2014.Person.Person