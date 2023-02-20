create table book(
id int,
name varchar(20),
price decimal,
author varchar(20),
publication varchar(50),
contact varchar(10)
)
alter table book alter column id int not null
alter table book add constraint pk_book primary key(id)
alter table book alter column name varchar not null
alter table book add constraint df_book default 'TQ' for publication
alter table book add constraint un_book unique(contact)

sp_help book

create table booktype(
bookid int,
booktype varchar(30),
genre varchar(10),
)
alter table booktype add constraint fk_deptemp foreign key(id)references book(id)
select * from book
select * from booktype
insert into booktype values(1,'A','Horror')
insert into booktype values(2,'C','Crime')
insert into book values(1,'C#',399,'R.S',8288888)