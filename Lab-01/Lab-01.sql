
CREATE TABLE Departments (
  Name varchar(20) NOT NULL ,
  ID char(5) PRIMARY KEY,
  Budget numeric(12,2),
  Category varchar(15) Check (Category in ('Engineering','Science'))
);
EXEC sp_columns Departments

CREATE TABLE Teachers (
  FirstName varchar(20) NOT NULL,
  LastName varchar(30) NOT NULL ,
  ID char(7),
  BirthYear int,
  DepartmentID char(5),
  Salary numeric(7,2) Default 10000.00,
  PRIMARY KEY (ID),
  FOREIGN KEY (DepartmentID) REFERENCES Departments(ID),
);
EXEC sp_columns Teachers

CREATE TABLE Students (
  FirstName varchar(20) NOT NULL,
  LastName varchar(30) NOT NULL ,
  StudentNumber char(7) PRIMARY KEY,
  BirthYear int,
  DepartmentID char(5),
  AdvisorID char(7),
  FOREIGN KEY (DepartmentID) REFERENCES Departments(ID),
  FOREIGN KEY (AdvisorID) REFERENCES Teachers(ID)
);
EXEC sp_columns Students


alter table Students add UnitNumber int;

EXEC sp_columns Students


create table Courses (
    ID char(5) PRIMARY KEY,
    Title VARCHAR(30) NOT NULL,
    Credits INT,
    DepartmentID char(5),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);
EXEC sp_columns Courses

create table Available_Courses (
    CourseID char(5) NOT NULL, 
    Semester varchar(10) CHECK (Semester in ('fall','spring')) NOT NULL,
    Year INT,
    TeacherID char(7) NOT NULL,
    PRIMARY KEY (CourseID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(ID)
);
EXEC sp_columns Available_Courses

create table Taken_Courses (
    StudentID char(7) NOT NULL,
    CourseID char(5) NOT NULL,
    Semester VARCHAR(10) CHECK (Semester in ('fall','spring')) NOT NULL,
    Year INT,
    Grade INT,
    PRIMARY KEY (StudentID,CourseID,Semester,Year),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentNumber),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
);
EXEC sp_columns Taken_Courses

create table Prerequisites(
    CourseID char(5) NOT NULL,
    PrereqID char(5),
    PRIMARY KEY (CourseID,PrereqID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);
EXEC sp_columns Prerequisites



-- INSERT Departments table
INSERT INTO Departments VALUES ('Comp. Sci.', 'CE', 1100000.00 , 'Engineering')
INSERT INTO Departments(Name, ID, Budget)VALUES('Mechanical', 'ME', 1400000.00)
INSERT INTO Departments(Name, ID, Category)VALUES('Physics', 'P' , 'Science')
INSERT INTO Departments VALUES('Math', 'MA' , 800000.00 ,'Science')
INSERT INTO Departments VALUES('Chemistry', 'CH' , 1200000.00 ,'Science')

-- INSERT Teachers table
INSERT INTO Teachers VALUES ('Michael','Halpert', '213', 1978, 'ME', 55000.00)
INSERT INTO Teachers VALUES ('Andy','Levinson', '763', 1983, 'CH', 49000.00)
INSERT INTO Teachers VALUES ('Josh','Wallace', '887', 1973, 'CE', 60000.00)
INSERT INTO Teachers (FirstName, LastName, ID, DepartmentID, Salary) VALUES ('Andy','Levinson', '429', 'P', 69000.00)
INSERT INTO Teachers VALUES ('Angela','Kapoor', '933', 1980, 'CE', 66000.00)
INSERT INTO Teachers VALUES ('Martin','Bridge', '368', 1975, 'CE', 70000.00)
INSERT INTO Teachers VALUES ('Jan','Bernard', '843', 1981, 'MA', 45000.00)

select * from Departments;
select * from Teachers;
-- INSERT Students table
INSERT INTO Students VALUES ('David','Green', '43431', 1996, 'CE','933', 100)
INSERT INTO Students VALUES ('James','Smith', '52314', 1998, 'CE','368', 65)
INSERT INTO Students VALUES ('Evelyn','ALbro', '84342', 1997, 'CE','887', 82)
INSERT INTO Students VALUES ('Avery','Albin', '32432', 1995, 'ME','213', 122)
INSERT INTO Students VALUES ('Jackson','Barks', '28562', 1999, 'MA','843', 34)
INSERT INTO Students VALUES ('Madison','Basil', '76458', 2000, 'CH','763', 17)
INSERT INTO Students VALUES ('William','Bevis', '11423', 1996, 'CE','368', 96)
INSERT INTO Students VALUES ('Mason','Bigwood', '123', 1997, 'CE','933', 84)


select * from Students;

-- INSERT Courses table
INSERT INTO Courses VALUES ('EW123','Digital', 3, 'CE')
INSERT INTO Courses VALUES ('TQ178','Database', 3, 'CE')
INSERT INTO Courses VALUES ('MJ912','C++', 4, 'CE')
INSERT INTO Courses VALUES ('GE237','Game Theory', 3, 'MA')
INSERT INTO Courses VALUES ('FS342','Physic_1', 3, 'P')
INSERT INTO Courses VALUES ('ML986','Physic_2', 3, 'P')
INSERT INTO Courses VALUES ('NF639','Math_1', 3, 'MA')
INSERT INTO Courses VALUES ('XS426','Math_2', 3, 'MA')

select * from Courses;

-- INSERT Available_Courses table
INSERT INTO Available_Courses VALUES ('EW123','fall', 2019, '933')
INSERT INTO Available_Courses VALUES ('TQ178','spring', 2020, '368')
INSERT INTO Available_Courses VALUES ('MJ912','spring', 2020, '887')
INSERT INTO Available_Courses VALUES ('GE237','fall', 2018, '843')
INSERT INTO Available_Courses VALUES ('FS342','fall', 2019, '429')
INSERT INTO Available_Courses VALUES ('ML986','spring', 2020, '429')
INSERT INTO Available_Courses VALUES ('NF639','fall', 2019, '843')
INSERT INTO Available_Courses VALUES ('XS426','spring', 2019, '843')

select * from Available_Courses;

-- INSERT Taken_Courses table
INSERT INTO Taken_Courses VALUES ('43431','TQ178', 'fall', 2020, 96)
INSERT INTO Taken_Courses VALUES ('43431','EW123', 'fall', 2019, 92)
INSERT INTO Taken_Courses VALUES ('52314','EW123', 'fall', 2019, 88)
INSERT INTO Taken_Courses VALUES ('52314','TQ178', 'fall', 2020, 88)
INSERT INTO Taken_Courses VALUES ('84342','MJ912', 'spring', 2020, 97)
INSERT INTO Taken_Courses VALUES ('28562','NF639', 'fall', 2019, 74)
INSERT INTO Taken_Courses VALUES ('28562','XS426', 'spring', 2019, 80)

select * from Taken_Courses;

-- INSERT Prerequisites table
INSERT INTO Prerequisites VALUES ('ML986','FS342')
INSERT INTO Prerequisites VALUES ('XS426','NF639')
INSERT INTO Prerequisites VALUES ('GE237','XS426')
INSERT INTO Prerequisites VALUES ('GE237','MJ912')

select * from Prerequisites;

-- Question1
select Departments.ID, Departments.Name, Departments.Category, Departments.Budget
from Departments INNER JOIN Students
ON (Departments.ID = Students.DepartmentID)
where Students.StudentNumber = '123'

-- Question2
select Taken_Courses.StudentID, Taken_Courses.CourseID, Taken_Courses.Semester, Taken_Courses.Year, Taken_Courses.Grade+1
from Taken_Courses

-- Question3
select DISTINCT Students.FirstName, Students.LastName, Students.StudentNumber, Taken_Courses.CourseID, Taken_Courses.Semester
from Students
LEFT JOIN Taken_Courses 
ON (Students.StudentNumber = Taken_Courses.StudentID) 
where Students.StudentNumber not in (select StudentID from Taken_Courses where CourseID = 'TQ178');

