select 
BusinessEntityID,
FirstName,
substring(FirstName,1,1) "1st Position",
substring(FirstName,4,1) "4th Position",
substring(FirstName,LEN(FirstName),1) "last Position",
substring(FirstName,(

CASE (LEN(FirstName)%2)
WHEn 0   THEN LEN(FirstName)/2
ELSE LEN(FirstName)/2+1
END 
)

,1) "Middle Position"

from AdventureWorks2014.Person.Person

Order by BusinessEntityID