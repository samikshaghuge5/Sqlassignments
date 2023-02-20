/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [empid]
      ,[empname]
      ,[salary]
  FROM [sqlpractise1].[dbo].[employee]
 
  CREATE TABLE tblemployee (
  empid INT PRIMARY KEY,
  empname VARCHAR(50),
  city VARCHAR(50),
  deptid int,
  salary int
);
ALTER TABLE tblemployee
DROP COLUMN salary;
insert into tblemployee values(1,'Rohan','Pune',1)
  insert into tblemployee values(2,'Shiv','Pune',2)
  insert into tblemployee values(3,'Hardik','Mumbai',3)
  insert into tblemployee values(4,'Abhishek','Ujjain',1)
  insert into tblemployee values(5,'Shreya','Nashik',2)
  insert into tblemployee values(6,'Ajinkya','Banglore',1)
  insert into tblemployee values(7,'Sahil','Pune',2)
  insert into tblemployee values(8,'Vihan','Mumbai',3)
   insert into tblemployee values(9,'Vivek','Mumbai',1)
    insert into tblemployee values(10,'Sai','Pune',1)
	 insert into tblemployee values(11,'Dev','Nashik',2)
	  insert into tblemployee values(12,'Manan','Mumbai',3)
	  
	  alter table tblemployee
	  add salary int;
	  UPDATE tblemployee
SET salary = CASE
              WHEN deptid = 1 THEN 20000
              WHEN deptid = 2 THEN 32000
			  WHEN deptid = 3 Then 26000
              ELSE 0
            END;
			select * from tblemployee
			select * from tblemployee where deptid=3;
			select * from tblemployee where salary = 20000;
			select * from tblemployee where salary <= 26000;
			select * from tblemployee where salary< 30000;
			select * from tblemployee where salary > 260000;
            select * from tblemployee where salary >= 20000;

			select * from tblemployee where salary between 26000 and 30000;
			select distinct city from tblemployee
			select distinct deptid from tblemployee
			select * from tblemployee where deptid in(3,4,5)
			update tblemployee set salary = 29000 where empid in (1,4,7)
			select * from tblemployee where empid in(1,3,4,5,7,10)
			select * from tblemployee where city in('Pune','Mumbai')
			select * from tblemployee where deptid in(3,4,5)
			select * from tblemployee where salary in(20000,29000)
	        select * from tblemployee where city not in('Pune','Mumbai')
           
