--question1 part 1
create login mylogin with PASSWORD = '1',
CHECK_POLICY = off

--question1 part 2
create server role role1;

grant create ANY DATABASE 
to role1; 

grant alter ANY DATABASE 
to role1;

--question1 part 3
alter server role role1 add member mylogin;

--question1 part 4
use AdventureWorks2012;

create user myuser for login mylogin;

grant select, INSERT
on Departments
to myuser;

--question2 part 1
create role role2;

create user myuser_question2 for login mylogin;

alter role role2 add member myuser_question2;

alter role db_securityadmin add member role2;


--question2 part 2
alter role db_datareader add member role2;

