
SELECT 
ProductID,
StandardCost,
ROUND(StandardCost,2) as "2 Decimals",
ROUND(StandardCost,1)as "1 Decimal", 
Convert(int,StandardCost)as "0 Decimals",
CONVERT(int,(StandardCost)-StandardCost%1) as "Interger "
      
  FROM AdventureWorks2014.Production.ProductCostHistory