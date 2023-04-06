CREATE TABLE tblDepartment
(
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
)
INSERT INTO tblDepartment (DeptID, DeptName)
VALUES (1, 'HR'), (2, 'Admin'), (3, 'Sales'), (4, 'Developer'), (5, 'Tester')
CREATE TABLE tblEmployee
(
    ID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    City VARCHAR(50),
    DeptID INT FOREIGN KEY REFERENCES tblDepartment(DeptID),
    Salary DECIMAL
)
INSERT INTO tblEmployee (ID, EmpName, City, DeptID, Salary)
VALUES (1, 'John', 'New York', 1, 50000),
       (2, 'Jane', 'Los Angeles', 2, 60000),
       (3, 'Mark', 'Chicago', 3, 55000),
       (4, 'Emily', 'Houston', 4, 70000),
       (5, 'David', 'San Francisco', 5, 45000),
       (6, 'Karen', 'Boston', 1, 52000),
       (7, 'Tom', 'Miami', 2, 58000),
       (8, 'Anna', 'Seattle', 3, 60000),
       (9, 'Mike', 'Dallas', 4, 75000),
       (10, 'Lisa', 'Washington DC', 5, 48000)

select e.ID, e.EmpName, e.City, d.DeptName, e.Salary
from tblEmployee e
inner join tblDepartment d on e.DeptID = d.DeptID
where e.City = 'New York' AND d.DeptName = 'HR'

select e.ID, e.EmpName, e.City,d.DeptName,e.Salary
from tblEmployee e
inner join tblDepartment d on e.DeptID=d.DeptID
where d.DeptName='HR' AND e.Salary>50000

select e.ID, e.EmpName, e.City,d.DeptName,e.Salary
from tblEmployee e
inner join tblDepartment d on e.DeptID=d.DeptID
where d.DeptName In ('HR','Developer') order by e.Salary desc

select e.ID, e.EmpName, e.City,d.DeptName,e.Salary
from tblEmployee e
left join tblDepartment d on e.DeptID=d.DeptID

alter table tblemployee add managerid int
