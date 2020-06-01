CREATE TABLE [Production].[ProductLog](
    [TypeOfModify] [nvarchar] (20),
	[ProductID] [int],
	[Name] [dbo].[Name],
	[ProductNumber] [nvarchar](25),
	[MakeFlag] [dbo].[Flag],
	[FinishedGoodsFlag] [dbo].[Flag],
	[Color] [nvarchar](15),
	[SafetyStockLevel] [smallint],
	[ReorderPoint] [smallint],
	[StandardCost] [money],
	[ListPrice] [money],
	[Size] [nvarchar](5),
	[SizeUnitMeasureCode] [nchar](3),
	[WeightUnitMeasureCode] [nchar](3),
	[Weight] [decimal](8, 2),
	[DaysToManufacture] [int],
	[ProductLine] [nchar](2),
	[Class] [nchar](2),
	[Style] [nchar](2),
	[ProductSubcategoryID] [int],
	[ProductModelID] [int],
	[SellStartDate] [datetime],
	[SellEndDate] [datetime],
	[DiscontinuedDate] [datetime],
	[rowguid] [uniqueidentifier],
	[ModifiedDate] [datetime]
) ON [PRIMARY]