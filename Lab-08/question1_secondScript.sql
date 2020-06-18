
begin tran
select ModifiedDate
from Person.PersonPhone
where BusinessEntityID = 1

waitfor delay '00:00:10'

select EmailAddress
from Person.EmailAddress
where BusinessEntityID = 2