select * 
from sales.SalesOrderHeader;

select * 
from sales.SalesOrderDetail;

select * 
from Production.Product;

select * 
from sales.SalesTerritory;


-- Question1
select *
from sales.SalesOrderHeader INNER JOIN sales.SalesTerritory
ON (sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID)
WHERE (sales.SalesOrderHeader.Status = 5) and (sales.SalesTerritory.Name = 'France' or  sales.SalesTerritory.[Group] = 'North America')
and (sales.SalesOrderHeader.TotalDue > 100000 and sales.SalesOrderHeader.TotalDue < 500000)
ORDER BY TotalDue;

-- Question2
select SalesOrderID, CustomerID, TotalDue, OrderDate, (select Name 
                                                        from sales.SalesTerritory 
                                                        where sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID) as TerritoryName
from sales.SalesOrderHeader


-- Question3
WITH newTable(ProductID, OrderQty, TerritoryID) AS 
    (select ProductID, SUM(OrderQty) as NumberOfSell, TerritoryID
    from sales.SalesOrderDetail INNER JOIN sales.SalesOrderHeader 
    ON (sales.SalesOrderDetail.SalesOrderID = sales.SalesOrderHeader.SalesOrderID)
    GROUP BY ProductID, TerritoryID),

    newtable_2 (ProductID,maximumNumberOfSell) AS 
    (select ProductID, max(OrderQty) 
    from newTable
    GROUP BY ProductID)    

    
    SELECT newTable.ProductID, TerritoryID
    from newTable , newtable_2
    where newTable.OrderQty = newtable_2.maximumNumberOfSell and newTable.ProductID = newtable_2.ProductID
    ORDER BY ProductID;

-- Question3 (version 2)
SELECT distinct tt.* 
    FROM (
        SELECT SOD.ProductID , SOH.TerritoryID , COUNT(OrderQty) as nProd
        FROM Sales.SalesOrderHeader as SOH INNER JOIN
            Sales.SalesOrderDetail as SOD on SOH.SalesOrderID = SOD.SalesOrderID
        GROUP BY SOH.TerritoryID, SOD.ProductID)as tt

    INNER JOIN

    (select ProductID, max(nProd) AS maxval
        FROM (
            SELECT SOD.ProductID , SOH.TerritoryID , COUNT(OrderQty) as nProd
            FROM Sales.SalesOrderHeader as SOH
            INNER JOIN Sales.SalesOrderDetail as SOD on SOH.SalesOrderID = SOD.SalesOrderID
            GROUP BY SOH.TerritoryID, SOD.ProductID) as f
        Group BY ProductID) as grouptt

    on tt.ProductID = grouptt.ProductID and tt.nProd = grouptt.maxval
    ORDER BY ProductID





-- Question4
WITH mytable(SalesOrderID,OrderDate,Status,CustomerID,TerritoryID,SubTotal,TotalDue,Name, CountryRegionCode,[Group]) AS 
    (select SalesOrderID,OrderDate,Status,CustomerID,sales.SalesOrderHeader.TerritoryID,SubTotal,TotalDue,Name,CountryRegionCode,sales.SalesTerritory.[Group]
    from sales.SalesOrderHeader INNER JOIN sales.SalesTerritory
    ON (sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID)
    WHERE (sales.SalesOrderHeader.Status = 5) and (sales.SalesTerritory.Name = 'France' or  sales.SalesTerritory.[Group] = 'North America')
    and (sales.SalesOrderHeader.TotalDue > 100000 and sales.SalesOrderHeader.TotalDue < 500000))
Select * into NAmerica_Sales  from  mytable; 

delete 
from NAmerica_Sales
where name = 'France';

alter table NAmerica_Sales add Comparison char(4) CHECK (Comparison in ('LOW','MID','HIGH'));

WITH myAvgTable (AvgTotalDue) as
    (select AVG(TotalDue)
    from sales.SalesOrderHeader INNER JOIN sales.SalesTerritory
    ON (sales.SalesOrderHeader.TerritoryID = sales.SalesTerritory.TerritoryID)
    WHERE sales.SalesTerritory.[Group] = 'North America' and (sales.SalesOrderHeader.TotalDue > 100000 and sales.SalesOrderHeader.TotalDue < 500000))

UPDATE NAmerica_Sales
set Comparison = (CASE 
                        WHEN TotalDue < AvgTotalDue THEN 'LOW'
                        WHEN TotalDue = AvgTotalDue THEN 'MID'
                        WHEN TotalDue > AvgTotalDue THEN 'HIGH'
                 END)
from NAmerica_Sales,myAvgTable;

select * 
from NAmerica_Sales;


-- Question5
WITH TempTable (BusinessEntityID,ratePerHour) AS
        (SELECT BusinessEntityID ,max(Rate)
        FROM HumanResources.EmployeePayHistory
        GROUP BY BusinessEntityID),
     
    TempTable2 (BusinessEntityID,ratePerHour, LEVEL) AS
        (select BusinessEntityID,ratePerHour, CASE 
                            WHEN ratePerHour < 29.0000 THEN 3
                            WHEN ratePerHour >= 29.0000 and ratePerHour < 50.0000 THEN 2
                            WHEN ratePerHour >= 50.0000 THEN 1
                    END as LEVEL
        from TempTable),
    
     myAVgTable (avg_Salary) AS
        (select AVG(ratePerHour)
        from TempTable2),

    TempTable3 (BusinessEntityID,ratePerHour,LEVEL) AS 
        (select BusinessEntityID, CASE 
                            WHEN ratePerHour <= avg_Salary/2 THEN (ratePerHour + (ratePerHour*20)/100)
                            WHEN ratePerHour > avg_Salary/2 and ratePerHour <= avg_Salary THEN (ratePerHour + (ratePerHour*15)/100)
                            WHEN ratePerHour > avg_Salary and ratePerHour <= avg_Salary + avg_Salary/2 THEN (ratePerHour + (ratePerHour*10)/100)
                          WHEN ratePerHour > avg_Salary + avg_Salary/2 THEN (ratePerHour + (ratePerHour*5)/100)
                                END, LEVEL
        from TempTable2,myAVgTable)
select * 
from TempTable3
ORDER BY BusinessEntityID;



