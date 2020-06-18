
begin TRAN

select Name
from HumanResources.Department
where DepartmentID = 3

update HumanResources.Department
set Name = Name + '1'
where DepartmentID = 3

commit TRAN
