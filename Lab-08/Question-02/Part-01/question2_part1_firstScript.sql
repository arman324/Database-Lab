use AdventureWorks2012
go

select * from Person.Address

begin TRAN
SELECT ModifiedDate
from Person.Address
where AddressID = 1

waitFor delay '00:00:10'

UPDATE Person.Address
set ModifiedDate = '2010-12-04 22:22:22.222'
where AddressID = 1

select SUBSTRING(CONVERT(varchar(15), ModifiedDate, 112),1,4)
from Person.Address
where AddressID = 1 