use AdventureWorks2014


SELECT rate


                ,DENSE_RANK() OVER (ORDER BY rate desc) AS dense_rankSalary,
RANK() OVER (ORDER BY rate desc) AS rankSalary


                FROM HumanResources.EmployeePayHistory


               -- GROUP BY rate;