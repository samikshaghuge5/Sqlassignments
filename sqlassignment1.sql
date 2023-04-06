create table customer(
cid int,
cname varchar(20),
city varchar(20),
pincode varchar(10),
country varchar(10)
)
create table product(
pid int,
product varchar(20),
pname varchar(10),
price decimal
)
insert into customer values(1,'Raj','Berlin',401100,'Germany')
insert into customer values(2,'Manan','London',300010,'UK')
insert into customer values(3,'John','Berlin',401100,'Germany')
insert into customer values(4,'Stella','Venice',123654,'Italy')
insert into customer values(5,'Maria','Berlin',401100,'Germany')
insert into customer values(6,'Sina','Venice',123654,'Italy')
insert into customer values(7,'Meher','Columbia',401000,'USA')
insert into customer values(8,'Diksha','Columbia',401000,'USA')
select * from customer

--1.Write a statement that will select the City column from the Customers table
select city from customer
--2.	Select all the different values from the Country column in the Customers table.
select distinct country from customer
--3  Select all records where the City column has the value "London
select * from customer where city = 'London';
--4 	Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where city not in ('Berlin')
--5.	Select all records where the CustomerID column has the value 23.
select * from customer where cid = 23
--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
insert into customer values(9,'Sara','Berlin',121110,'Germany')
select * from customer where city = 'Berlin' and pincode = 121110
--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city ='Berlin' or city='London'
--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer order by city
--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer order by city desc
--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer order by country, city
--29 Use the IN operator to select all the records where the Country is either "Norway" or "France".
insert into customer values(10,'Jay','Paris',301000,'France')
insert into customer values(11,'Hardik','Paris',301000,'France')
insert into customer values(12,'Jaimin','Oslo',300900,'Norway')
insert into customer values(12,'Sam','Oslo',300900,'Norway')
select * from customer where country in('Norway','France')
--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer where country not in('Norway','France')
--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
insert into product values(1,'A','Cookie',10)
insert into product values(2,'B','Chocolate',20)
select price from product where price between 10 and 20
--40.	Add a column of type DATE called Birthday in Persons table
create table persons(personid int,
name varchar(10)
)
alter table persons add birthday varchar
--41.	Delete the column Birthday from the Persons table
alter table persons drop column birthday

select * from customer where cname like '%a'
select * from customer where cname like '%[g-t]'

