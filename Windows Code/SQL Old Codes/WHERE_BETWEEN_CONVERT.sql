SELECT 
BusinessEntityID,
CONVERT(varchar,ModifiedDate,10)  "mm-dd-yy",
CONVERT(VARCHAR,ModifiedDate,110) "mm-dd-yyyy",
CONVERT(varchar,ModifiedDate,6) "dd mon yy",
CONVERT(varchar,ModifiedDate,106) "dd mon yyyy",
CONVERT(varchar,ModifiedDate,101) "mm/dd/yyyy",
CONVERT(varchar,ModifiedDate,1) "mm/dd/yy"

FROM [AdventureWorks2014].[Person].[Person]
WHERE SUBSTRING(CONVERT(varchar,ModifiedDate,106),4,3)  BETWEEN 'Dec' AND 'Jan'
Order by SUBSTRING(CONVERT(varchar,ModifiedDate,106),4,1)
 --WHERE ModifiedDate between '2009-01-07' and '2010-12-30'

