-- Question 1

-- The following command should run on the terminal (For Linux/OS X)
-- bcp AdventureWorks2012.Sales.SalesTerritory out q1.txt -S 127.0.0.1 -U SA -P [password] -c -t\|


CREATE TABLE SalesTerritoryNew(
	[TerritoryID] [int] NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL,
	[CostYTD] [money] NOT NULL,
	[CostLastYear] [money] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]


bulk insert SalesTerritoryNew
from '/q1.txt'
WITH (
    fieldterminator = '|'
)

select * from SalesTerritoryNew

-- Question 2

-- The following command should run on the terminal (For Linux/OS X)
-- bcp "SELECT Name, TerritoryID FROM AdventureWorks2012.Sales.SalesTerritory order by TerritoryID" queryout q2.txt -S 127.0.0.1 -U SA -P [password] -c -t

-- Question 3

-- The following command should run on the terminal (For Linux/OS X)
-- bcp AdventureWorks2012.Production.Location out location.dat -S 127.0.0.1 -U SA -P [password] -c -t

-- Question 4

select Name,
Demographics.query('
declare default element namespace "http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey";
for $i in /StoreSurvey
return
<Result>
{$i/AnnualSales}
</Result>
') as AnnualSales,
Demographics.query('
declare default element namespace "http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey";
for $i in /StoreSurvey
return
<Result>
{$i/YearOpened}
</Result>
') as YearOpened,
Demographics.query('
declare default element namespace "http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/StoreSurvey";
for $i in /StoreSurvey
return
<Result>
{$i/NumberEmployees}
</Result>
') as NumberEmployees
from Sales.Store
order by name