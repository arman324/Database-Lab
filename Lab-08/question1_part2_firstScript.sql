
select * from HumanResources.Department

begin TRAN

select Name
from HumanResources.Department
where DepartmentID = 3

waitfor delay '00:00:20'

update HumanResources.Department
set Name = Name + '1'
where DepartmentID = 3

waitfor delay '00:00:20'

select Name
from HumanResources.Department
where DepartmentID = 3


COMMIT TRAN
