<<<<<<< HEAD
<<<<<<< Updated upstream
# Database Lab
## [Lab-01:](https://github.com/arman324/Database-Lab/blob/master/Lab-01/Lab-01.sql)
First of all, I created a database and then created and filled tables. After that I answered 3 questions:
1. For a student who has a student number 123, show the details of the department where he or she is studying.
> * You can see my answer on [line number 156](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L156).
2. Write a 'select' that adds a score to each student's grade in each lesson. 
> * You can see my answer on [line number 162](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L162).
3. Write a query to display students who have not taken the DB course. 
> * You can see my answer on [line number 166](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L166).

## [Lab-02:](https://github.com/arman324/Database-Lab/blob/master/Lab-02/Lab-02.sql)
In this lab, I used the AdventureWorks2012 database and answered 5 questions:
1. For the AdventureWorks2012, write a query that returns the general information of the orders being processed, which are between 100000 and 500000, and the place of order is from France or one of the countries in the North American region.
> * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L14).
2. For the AdventureWorks2012, write a query that shows the sales order identification number, customer identification number, order amount(TotalDue), order date, and the name of the region where the order was registered, for each order.
> * You can see my answer on [line number 22](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L22).
3. For the AdventureWorks2012, write a query that shows which area had the most orders for each product.
> * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L29).
> * You can see the answer (version 2) on [line number 47](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L47).
4. For the AdventureWorks2012, create a table called NAmerica_Sales, which is in accordance with question number 1. Add a column to this table and add a constraint to have only Low, High, or Mid values. Then update this column for each tuple to 'High' when the order cost(TotalDue) is higher than the average total cost (The cost of all orders) on the North American region. Update the column to 'Mid' if the order cost(TotalDue) is equal to the average total cost on the North American region. Finally, update the column to 'Low' when the order cost(TotalDue) is lower than the average total cost on the North American region.
> * You can see my answer on [line number 72](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L72).
5. increase all employee salaries for each hour of work by 20%, 15%, 10% or 5%. Then give them a level in accordance with their salaries.
> * You can see my answer on [line number 105](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L105).
## [Lab-03:](https://github.com/arman324/Database-Lab/tree/master/Lab-03)
In this lab, I worked with "User" and "Login" in the SQL Server.
* SQL "Login" is for Authentication:
    * Authentication can decide if we have permission to access the **SERVER** or not.
    * A "Login" grants the principal entry into the **SERVER**.
* SQL server "User" is for Authorization:
    * Authorization decides what are different operations we can do in a **DATABASE**.
    * A "User" grants a login entry into a single **DATABASE**.

I answered these questions:

1. First, create a "Login" in the SQL Server.
> * You can see my answer on [line number 1](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L1) in the __sa_admin.sql__ file.
2. Create a role that has the ability to manage the database.
> * You can see my answer on [line number 5](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L5) in the __sa_admin.sql__ file.
3. Connect the role to the "Login" created in the first question.
> * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L14) in the __sa_admin.sql__ file.
4. With the "login" created in Question 1, log in to the SQL server and then create a table in the AdventureWorks2012 database, Insert data in this table, and select data from it.
> * You can see my answer on [line number 17](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L17) in the __sa_admin.sql__ file and [line number 1](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/myLogin.sql#L1) in the __myLogin.sql__ file.
5. In the AdventureWorks2012 database, create a role called it role2 that has no access to the tables but can only manage permissions.
> * You can see my answer on [line number 26](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L26) in the __sa_admin.sql__ file.
6. Grant DataReader permission to role 2.
> * You can see my answer on [line number 36](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L36) in the __sa_admin.sql__ file.

## [Lab-04:](https://github.com/arman324/Database-Lab/blob/master/Lab-04/Lab-04.sql)
In this lab, I used the AdventureWorks2012 database and answered 2 questions:
1. For the AdventureWorks2012, write a query that has the number of orders and the total value of the orders for each Territory along with its Territory area. Show the total number and value of orders for all Territories in one area and at the end of the report for all areas.
* The output should be the same as the following image:

<img width="482" alt="Screen Shot 2020-05-05 at 3 50 43 PM" src="https://user-images.githubusercontent.com/35253872/81061075-f314b980-8ee8-11ea-9c06-a3b8fcbee860.png">

> * You can see my answer on [line number 1](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L1).
> * You can see the answer (version 2) on [line number 32](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L32).

2. For the AdventureWorks2012, write a query that shows the number of orders and the total value of orders for each subcategory of goods along with its category. Show the number and value of orders for all subcategories in one category and at the end of the report for all categories.
* The output should be the same as the following image:

<img width="482" alt="Screen Shot 2020-05-05 at 4 03 37 PM" src="https://user-images.githubusercontent.com/35253872/81061693-0c6a3580-8eea-11ea-987e-ea8440e0b417.png">

> * You can see my answer on [line number 71](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L71).
> * You can see the answer (version 2) on [line number 121](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L121).

## [Lab-05:](https://github.com/arman324/Database-Lab/blob/master/Lab-05/Lab-05.sql)
In this lab, I used the AdventureWorks2012 database and answered 5 questions:
1. For the AdventureWorks2012, write a query that shows all the products' names along with the number of sales of each item (Order Qty) in each region as a separate column for each product.
> * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L14).
2. For the AdventureWorks2012, modify the following code, to have the output as shown below:
    ```sql
    select Person.BusinessEntityID, PersonType, Gender
    from Person.Person 
        join HumanResources.Employee
         on (Person.BusinessEntityID = Employee.BusinessEntityID)
    ```

<img width="189" alt="Screen Shot 2020-05-18 at 7 33 39 PM" src="https://user-images.githubusercontent.com/35253872/82228975-130f9880-993f-11ea-9f31-2e2816ad7124.png">

> * You can see my answer on [line number 22](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L22).
3. For the AdventureWorks2012, write a query that returns all the products’ names which names are less than 11 characters long and which the 2 left character of name to the end is 'e'. (Like Freewheel)
> * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L29).
> * You can see the answer (version 2) on [line number 47](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L47).
4. For the AdventureWorks2012, write a function that gives an 11 character word as input, and if the form of the input is the same as YYYY/MM/DD (Like 2019/09/17) from, it returns 'September 17 2019' otherwise it returns 'Wrong format input'
> * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L29).
5. For the AdventureWorks2012, write a function that gives three inputs for the year, month, and the products’ names, and returns territories that have sold the product at least once on the desired date.
> * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L29).
## Requirements
* [SQL Server 2019](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* [SQL Management Tools for SQL server](https://www.guru99.com/top-20-sql-management-tools.html)
* [AdventureWorks2012](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks2012)

## Support
Reach out to me at riasiarman@yahoo.com
=======
=======
>>>>>>> parent of 4be742f... Update Lab-05.sql
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
<<<<<<< HEAD
=======



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



>>>>>>> parent of 4be742f... Update Lab-05.sql
 
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

<<<<<<< HEAD
=======


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


>>>>>>> parent of 4be742f... Update Lab-05.sql
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
<<<<<<< HEAD
>>>>>>> Stashed changes
=======
>>>>>>> parent of 4be742f... Update Lab-05.sql
