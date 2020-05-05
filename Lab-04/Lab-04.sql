--question 1
select * from Sales.SalesTerritory

select * from Sales.SalesOrderHeader

WITH newTabel1(TerritoryName, TerritoryRegion) as 
    (select Name, [Group] 
    from Sales.SalesTerritory)
   
select case GROUPING(Sales.SalesTerritory.Name)
        when 0 then Sales.SalesTerritory.Name
        when 1 then 'ALL Territories'
        END AS TerritoryName, 
        case GROUPING(Sales.SalesTerritory.[Group]) 
        when 0 then Sales.SalesTerritory.[Group]
        when 1 then case GROUPING(Sales.SalesTerritory.Name) 
                        when 0 then (select TerritoryRegion from newTabel1 where Sales.SalesTerritory.Name = newTabel1.TerritoryName)
                        when 1 then 'All Regions'
                        end
        END AS Region, 
        SUM(Sales.SalesOrderHeader.SubTotal) as SalesTotal,
        COUNT(Sales.SalesOrderHeader.SalesOrderID) as SalesCount
from Sales.SalesTerritory INNER JOIN Sales.SalesOrderHeader 
ON (Sales.SalesTerritory.TerritoryID = Sales.SalesOrderHeader.TerritoryID)
GROUP BY GROUPING SETS(
    (),
    (Sales.SalesTerritory.Name), 
    (Sales.SalesTerritory.[Group])
) 
order by Sales.SalesTerritory.Name, Sales.SalesTerritory.[Group]

--question 2
select * from Sales.SalesOrderDetail

select * from Production.Product

select * from Production.ProductSubcategory

select * from Production.ProductCategory


WITH newTable1 (CatName, ProductCategoryID) AS
    (select Production.ProductCategory.Name, Production.ProductCategory.ProductCategoryID
    from Production.ProductCategory),

    newTable2 (SubCatName, ProductCategoryID) AS
    (select Production.ProductSubcategory.Name, Production.ProductSubcategory.ProductCategoryID
    from Production.ProductSubcategory),

    newTable3 (CatName, SubCatName) AS
    (select newTable1.CatName, newTable2.SubCatName
    from newTable1 INNER JOIN newTable2
    ON (newTable1.ProductCategoryID = newTable2.ProductCategoryID))

select  case GROUPING(Production.ProductSubcategory.Name)
        when 0 then Production.ProductSubcategory.Name
        when 1 then 'ALL SubCat'
        END as SubCat,
        case GROUPING(Production.ProductCategory.Name)
        when 0 then Production.ProductCategory.Name
        when 1 then case GROUPING(Production.ProductSubcategory.Name)
                        when 0 then (select newTable3.CatName from newTable3 where newTable3.SubCatName = Production.ProductSubcategory.Name)
                        when 1 then 'ALL Cat'
                        end
        END as Cat,
        COUNT(Sales.SalesOrderDetail.OrderQty) as SalesCount,
        SUM(Sales.SalesOrderDetail.LineTotal) as SalesTotal
from Sales.SalesOrderDetail INNER JOIN Production.Product 
ON (Sales.SalesOrderDetail.ProductID = Production.Product.ProductID) 
    INNER JOIN Production.ProductSubcategory 
ON (Production.ProductSubcategory.ProductSubcategoryID = Production.Product.ProductSubcategoryID)
    INNER JOIN Production.ProductCategory
ON (Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID)
GROUP BY GROUPING SETS(
    (),
    (Production.ProductSubcategory.Name), 
    (Production.ProductCategory.Name)
) 
ORDER BY Cat, SubCat