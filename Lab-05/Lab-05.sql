-- question 1

select Name, Europe, [North America] as 'North America', Pacific
from 
(
select Production.Product.Name,  Sales.SalesOrderDetail.OrderQty, sales.SalesTerritory.[Group]
from Production.Product 
    inner join  Sales.SalesOrderDetail 
     on (Production.Product.ProductID = Sales.SalesOrderDetail.ProductID)
    inner join sales.SalesOrderHeader
     on (sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID)
    inner join sales.SalesTerritory
     on (sales.SalesTerritory.TerritoryID = sales.SalesOrderHeader.TerritoryID)
)as SourceTable
PIVOT
(
COUNT(OrderQty)
for [Group] IN (Europe, [North America], Pacific) 
)as PVT



-- question 1 (version 2)
WITH productToSalesOrderDetail(ProductID, Name,OrderQty, SalesOrderID)as(
SELECT P.ProductID, P.Name,SOD.OrderQty, SOD.SalesOrderID from Sales.SalesOrderDetail as SOD INNER JOIN Production.Product as P ON
SOD.ProductID = P.ProductID),

PSODtoSalesTerritory(ProductID, Name,OrderQty, TerritoryID) as(
SELECT PSOD.ProductID,PSOD.Name, PSOD.OrderQty , SOH.TerritoryID FROM productToSalesOrderDetail as PSOD INNER JOIN Sales.SalesOrderHeader as SOH 
ON PSOD.SalesOrderID = SOH.SalesOrderID
),

table1(ProductID, Name, OrderQty, Region) as(
SELECT PSODtoST.ProductID, PSODtoST.Name, PSODtoST.OrderQty, ST.[Group] FROM PSODtoSalesTerritory as PSODtoST INNER JOIN Sales.SalesTerritory as ST
ON PSODtoST.TerritoryID = ST.TerritoryID
),

table2(Name, Europe, Pacific, NorthAmerica) as (
SELECT Name, Europe, Pacific, [North America]
FROM (select * FROM table1 ) as m
PIVOT(
    COUNT(ProductID)
    FOR Region IN(Europe,Pacific,[North America]))as PVT
)

SELECT Name, SUM(Europe) as Europe, SUM(NorthAmerica) as [North America], SUM(Pacific) AS Pacific
FROM table2 
GROUP BY Name
ORDER BY Name



 
-- question 2

select PersonType, M, F 
from 
(
select Person.BusinessEntityID, PersonType, Gender
from Person.Person 
    join HumanResources.Employee 
     on (Person.BusinessEntityID = Employee.BusinessEntityID)
)as SourceTable
PIVOT
(
COUNT (BusinessEntityID)
for Gender IN (M, F)
)as PVT

-- question 3

select name
from Production.Product 
where (LEN (name) < 15 and SUBSTRING(name, LEN (name) - 2, 1) = 'e')
order by name

-- question 4

create function F_date (@date_in char(10))
    returns varchar(100)
    BEGIN
    declare @my_output VARCHAR(100);
    declare @year INT;
    declare @month INT;
    declare @day INT;              


                            if (SUBSTRING(@date_in,5,1) != '/') or (SUBSTRING(@date_in,8,1) != '/') 
                                set @my_output = 'Wrong format input';
                            else if (len(@date_in) < 10)
                                set @my_output = 'Wrong format input';

                            else 
                                begin 

                            set @year = SUBSTRING(@date_in,1,4);
                            set @month = SUBSTRING(@date_in,6,2);
                            set @day = SUBSTRING(@date_in,9,2);  

                            if (@day > 31)
                             set @my_output = 'Wrong format input';
                            else if (@month = 01)
                             set @my_output = 'January' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 02)  
                             set @my_output = 'February' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 03)  
                             set @my_output = 'March' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 04)  
                             set @my_output = 'April' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 05)  
                             set @my_output = 'May' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 06)  
                             set @my_output = 'June' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 07)  
                             set @my_output = 'July' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 08)  
                             set @my_output = 'August' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 09)  
                             set @my_output = 'September' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 10)  
                             set @my_output = 'October' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 11)  
                             set @my_output = 'November' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else if (@month = 12)  
                             set @my_output = 'December' + ' ' + CONVERT(varchar(40),@day) + ' ' + CONVERT(varchar(40),@year);
                            else 
                             set @my_output = 'Wrong format input';
                        end                
    RETURN @my_output
end

select dbo.F_date('2019/09/17') as date
select dbo.F_date('201/09/17') as date
select dbo.F_date('2019/9/17') as date
select dbo.F_date('2019/0917') as date
select dbo.F_date('20190917') as date
select dbo.F_date('2019/09/32') as date
select dbo.F_date('2019/13/17') as date
select dbo.F_date('14/12/2019') as date

drop FUNCTION F_date



-- question 4 (version 2)
Create dbo.MonthConverter (@input VARCHAR(2))
RETURNS VARCHAR(20)
AS BEGIN
    DECLARE @ret VARCHAR(20)

    SET @ret =( select case
                        when @input = '01' then  'January'
                        when @input = '02' then  'February'
                        when @input = '03' then  'March'
                        When @input = '04' then  'April'
                        When @input = '05' then  'May'
                        when @input = '06' then  'June'
                        when @input = '07' then  'July'
                        when @input = '08' then  'August'
                        when @input = '09' then  'September'
                        when @input = '10' then  'October'
                        when @input = '11' then  'November'
                        when @input = '12' then  'December'
                        else 'Wrong month'
                        end)


    RETURN @ret
END


Create FUNCTION dbo.DateConverter (@input VARCHAR(10))
RETURNS VARCHAR(50)
AS BEGIN
    DECLARE @ret VARCHAR(50)
    SET @ret =( select case
                        when @input is null then 'Wrong DateTime'
                        when LEN(@input) <> 10 then 'Wrong DateTime'
                        when(select dbo.MonthConverter(SUBSTRING(@input,6,2)))= 'Wrong month' then 'Wrong DateTime'
                        when SUBSTRING(@input,5,1) = '/' and SUBSTRING(@input,8,1)='/' then
                             SUBSTRING(@input,9,2) + ' ' + (select dbo.MonthConverter(SUBSTRING(@input,6,2))) + ' month ' + SUBSTRING(@input,1,4)
                        else 'Wrong DateTime'
                    end)
    RETURN @ret
END


SELECT dbo.DateConverter('2020/1/1')


-- question 5

create FUNCTION my_FUNC (@year int,
                         @month int,
                         @name varchar(50)
                        )
    returns table 

    as 

        return 
              
            select DISTINCT sales.SalesTerritory.name as TerritoryName
            from Production.Product 
                inner join  Sales.SalesOrderDetail 
                on (Production.Product.ProductID = Sales.SalesOrderDetail.ProductID)
                inner join sales.SalesOrderHeader
                on (sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID)
                inner join sales.SalesTerritory
                on (sales.SalesTerritory.TerritoryID = sales.SalesOrderHeader.TerritoryID)
            where (Production.Product.Name = @name) 
                    and 
                   (year(Sales.SalesOrderHeader.OrderDate) = @year)
                    and 
                   (month(Sales.SalesOrderHeader.OrderDate) = @month)



select * 
from dbo.my_FUNC(2011, 05,'AWC Logo Cap')
order by TerritoryName

select * 
from dbo.my_FUNC(2011, 05,'Mountain-100 Black, 42')
order by TerritoryName


drop function my_FUNC
