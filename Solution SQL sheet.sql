use dbmsproject;
create table Student (
RollNo int (20) primary key not null, 
Name varchar(30) not null,
Email varchar(30) ,
Address varchar(30),
Gender varchar(9),
check (gender in ('Male','Female'))
);

SELECT * FROM dbmsproject.student;

use dbmsproject;
create table Employee(
Emp_id int  (20) primary key not null,
Emp_name varchar (30) not null,
Emp_no bigint not null
);
SELECT * FROM dbmsproject.Employee;


CREATE TABLE EmployeeDetails (
    Emp_ID INT PRIMARY KEY,
    Emp_Profile VARCHAR(255),
    Emp_Country VARCHAR(255),
    Emp_Join_Date DATE,
    FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID)
);
SELECT * FROM dbmsproject.Employeedetails;

SELECT Emp_Name, Emp_No, Emp_Profile, Emp_Country, Emp_Join_Date 
FROM Employeedetails INNER JOIN Employee
ON employeedetails.Emp_ID=employee.Emp_ID;

SELECT Emp_Name, Emp_No, Emp_Profile,Emp_Country 
FROM Employeedetails LEFT JOIN Employee
ON Employeedetails.Emp_ID=Employee.Emp_ID;

SELECT Emp_Name, Emp_No, Emp_Profile,Emp_Join_Date 
FROM Employee RIGHT JOIN Employeedetails 
ON Employee.Emp_ID=Employeedetails.Emp_ID;







