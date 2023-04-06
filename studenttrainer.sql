create table Student(
rollno int primary key,
sname varchar(50),
degree varchar(50),
birthdate date,batchid int,feespaid decimal(10,2),remark varchar(100),
isplaced bit,
courseid int,
foreign key(courseid) references Course(courseid),

)
create table Course(courseid int primary key,
coursename varchar(50),
duration int,totalfees decimal(10,2),
trainerid int,
foreign key(trainerid) references Trainer(trainerid)

)
create table Trainer(trainerid int primary key,
trainername varchar(50),joindate date,email varchar(50),experience int
)

INSERT INTO Trainer
VALUES (1, 'John Smith', '2019-01-01', 'john.smith@example.com', 3)
INSERT INTO Trainer
VALUES (2, 'Harry', '2019-01-03', 'h@example.com', 3)
INSERT INTO Trainer
VALUES (3, 'Nancy', '2019-01-18', 'n@example.com', 5)
INSERT INTO Trainer
VALUES (4, 'Marrie', '2019-01-30', 'm@example.com', 2)

insert into Course values(1,'SQL',3,50000,1)
insert into Course values(2,'C#',3,90000,2)
insert into Course values(3,'JAVA',3,40000,3)
insert into Course values(4,'MVC',3,80000,4)

insert into Student VALUES(1,'Shiv','B.E','2000-01-01',1,60000,'Good',1,1)
insert into Student VALUES(2,'Hardik','B.E','2000-04-08',1,60000,'Not good',0,2)
insert into Student VALUES(3,'Riddhi','B.E','2000-05-09',1,60000,'can do better',0,3)
insert into Student VALUES(4,'Deepa','B.E','2000-06-10',1,60000,'Best',1,4)

select * from Student
--1
select s.rollno,s.sname,c.coursename, t.trainername
from Student s
inner join Course c on s.courseid=c.courseid
inner join Trainer t on c.trainerid = t.trainerid
order by c.coursename, s.sname
--2
select s.sname,c.coursename,(c.totalfees-s.feespaid) as balancefees
from Student s
join Course c on s.courseid = c.courseid
where (c.totalfees-s.feespaid) >10000
order by balancefees desc
--3 append letter 
update s
set batchid = batchid + '_spl'
from Student s
inner join Course c on s.courseid=c.courseid
inner join Trainer t on c.trainerid = t.trainerid
where t.trainername = 'John Smith'
--4 
update Student
set remark = 'Eligible for exam'
from Student
join Course on Student.courseid =Course.courseid

--5
create index indexcourse on course(coursename)
--6
select c.coursename
from Course c
join Student s on c.courseid= s.courseid
group by c.courseid, c.coursename
having count
