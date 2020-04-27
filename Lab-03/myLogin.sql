--question1
use AdventureWorks2012;

CREATE TABLE Departments (
  Name varchar(20) NOT NULL ,
  ID char(5) PRIMARY KEY,
  Budget numeric(12,2),
  Category varchar(15) Check (Category in ('Engineering','Science'))
);

INSERT INTO Departments VALUES ('Comp. Sci.', 'CE', 1100000.00 , 'Engineering')
INSERT INTO Departments(Name, ID, Budget)VALUES('Mechanical', 'ME', 1400000.00)
INSERT INTO Departments(Name, ID, Category)VALUES('Physics', 'P' , 'Science')
INSERT INTO Departments VALUES('Math', 'MA' , 800000.00 ,'Science')
INSERT INTO Departments VALUES('Chemistry', 'CH' , 1200000.00 ,'Science')

select * 
from Departments
where ID in ('CE', 'Ma', 'CH');




--question2
select * from Person.Address;














