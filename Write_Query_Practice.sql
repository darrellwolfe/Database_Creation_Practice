Select *
From Employee

/*
Example
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Department) VALUES (1, 'John', 'Doe', 'john.doe@example.com', 'IT');
*/

/*
This failed, due to not having dates enclosed, 
Insert Into Employee
(EmployeeId, FirstName, LastName,Aliases,DateOfBirth,Gender,Email,PhoneNumber,Address,City,State,PostalCode,HireDate, JobTitle,DepartmentId)
Values
(0000001,'Darrell','Wolfe','Storyteller',07/15/1980,'Male','darrellgwolfe@outlook.com','2083710283','24873 N Corbin Hill Rd','Athol','Idaho','83801',03/02/2022,'Chief Storyteller',1);
*/

/*
--Corected, but still wrong. 
INSERT INTO Employee
(EmployeeId, FirstName, LastName, Aliases, DateOfBirth, Gender, Email, PhoneNumber, Address, City, State, PostalCode, HireDate, JobTitle, DepartmentId)
VALUES
('0000001', 'Darrell', 'Wolfe', 'Storyteller', '07/15/1980', 'Male', 'darrellgwolfe@outlook.com', '2083710283', '24873 N Corbin Hill Rd', 'Athol', 'Idaho', '83801', '03/02/2022', 'Chief Storyteller', 1);
Msg 544, Level 16, State 1, Line 19
Cannot insert explicit value for identity column in table 'Employee' when IDENTITY_INSERT is set to OFF.
*/

/*
--Corrected-Corrected
INSERT INTO Employee
(FirstName, LastName, Aliases, DateOfBirth, Gender, Email, PhoneNumber, Address, City, State, PostalCode, HireDate, JobTitle, DepartmentId)
VALUES
('Darrell', 'Wolfe', 'Storyteller', '07/15/1980', 'Male', 'darrellgwolfe@outlook.com', '2083710283', '24873 N Corbin Hill Rd', 'Athol', 'Idaho', '83801', '03/02/2022', 'Chief Storyteller', 1);
Msg 2628, Level 16, State 1, Line 28
String or binary data would be truncated in table 'ToposCreativeDatabase.dbo.Employee', column 'Gender'. Truncated value: 'M'.
The statement has been terminated.

*/

--3, Also had to ensure the value on the Department Table existed first, before adding an Employee. 
INSERT INTO Employee
(FirstName, LastName, Aliases, DateOfBirth, Gender, Email, PhoneNumber, Address, City, State, PostalCode, HireDate, JobTitle, DepartmentId)
VALUES
('Darrell', 'Wolfe', 'Storyteller', '07/15/1980', 'M', 'darrellgwolfe@outlook.com', '2083710283', '24873 N Corbin Hill Rd', 'Athol', 'Idaho', '83801', '03/02/2022', 'Chief Storyteller', 1);

Select *
From Employee

----

Update Employee
Set Salary = '150000'
Where EmployeeId=4


Select *
From Employee









