use AdventureWorks2012
go

begin tran
update Person.EmailAddress
set EmailAddress = 'kennnnnnnnnn@adventure-works.com'
where BusinessEntityID = 2

waitfor delay '00:00:25'

update Person.PersonPhone
set ModifiedDate = '2010-01-07 00:00:00.454'
where BusinessEntityID = 1


waitfor delay '00:00:15'

