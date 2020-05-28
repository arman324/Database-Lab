-- question 1
create trigger LogTable
 ON Production.Product
 AFTER DELETE, INSERT, UPDATE
 AS 
    if EXISTS (select * from deleted) and EXISTS (select * from inserted)
    begin 
            INSERT INTO Production.ProductLog (TypeOfModify,ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) 
            select 'UPDATE', ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate from inserted
    end

   if EXISTS (select * from deleted) and NOT EXISTS (select * from inserted)
    begin 
            INSERT INTO Production.ProductLog (TypeOfModify,ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) 
            select 'DELETE', ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate from deleted
    end 

   if NOT EXISTS (select * from deleted) and EXISTS (select * from inserted)
    begin 
           INSERT INTO Production.ProductLog (TypeOfModify,ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) 
           select 'INSERT', ProductID, Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate from inserted
    end




INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode, WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) 
values ('ArmanGoods', 'A9R-5381', 0, 0, NULL, 1000, 750,0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL,NULL, NULL, '2008-04-30 00:00:00.000', NULL, NULL, '694215b7-08f7-4c0d-acb1-d734bab4c0c8', '2014-02-08 10:01:36.827')

/*
delete 
from Production.Product
where name = 'ArmanGoods'
*/

UPDATE Production.Product
SET Name = 'MIGoods'
WHERE name = 'ArmanGoods'

delete 
from Production.Product
where name = 'MIGoods'


select * from Production.ProductLog



-- question 2

SELECT * INTO Production.CopyProductLog FROM Production.ProductLog

UPDATE Production.CopyProductLog
SET name = 'SamanGoods'
WHERE name = 'ArmanGoods'

UPDATE Production.CopyProductLog
SET TypeOfModify = 'UPT'
WHERE TypeOfModify = 'UPDATE'

UPDATE Production.CopyProductLog
SET TypeOfModify = 'INS'
WHERE TypeOfModify = 'INSERT'

select * from Production.CopyProductLog


-- question 3

ALTER PROCEDURE RecordChanges
AS
        BEGIN
                IF (EXISTS (select * from Production.RecordChangesProductLog))
                BEGIN
                        delete from Production.RecordChangesProductLog;
                END

                ;WITH myTable AS
                (select *
                from Production.ProductLog
                        EXCEPT
                select *
                from Production.CopyProductLog)
                INSERT INTO Production.RecordChangesProductLog SELECT * FROM myTable  
        END





SELECT * INTO Production.RecordChangesProductLog FROM Production.ProductLog WHERE 1 <> 1;

EXECUTE RecordChanges

select * from Production.RecordChangesProductLog



