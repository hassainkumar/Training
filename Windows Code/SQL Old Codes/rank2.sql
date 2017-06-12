use AdventureWorks2014

SELECT x.rate


,x.rankedSalary


FROM (SELECT rate


                ,DENSE_RANK() OVER (ORDER BY rate desc) AS rankedSalary


                FROM HumanResources.EmployeePayHistory


                GROUP BY rate) x


WHERE x.rankedSalary = 4