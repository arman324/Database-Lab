--question1
create login mylogin with PASSWORD = '1',
CHECK_POLICY = off

--question2
create server role role1;

grant create ANY DATABASE 
to role1; 

grant alter ANY DATABASE 
to role1;

--question3
alter server role role1 add member mylogin;

--question4
use AdventureWorks2012;

create user myuser for login mylogin;

grant select, INSERT
on Departments
to myuser;

--question5
create role role2;

create user myuser_question2 for login mylogin;

alter role role2 add member myuser_question2;

alter role db_securityadmin add member role2;


--question6
alter role db_datareader add member role2;

