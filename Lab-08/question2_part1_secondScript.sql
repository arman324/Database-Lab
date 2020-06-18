begin TRAN

select ModifiedDate
from Person.Address
where AddressID = 1 

select SUBSTRING(CONVERT (varchar(15), ModifiedDate, 112),1,4)
from Person.Address
where AddressID = 1 

