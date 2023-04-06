select b.bookname, authorname,awardname
from Book b
join Author a on b.authorid = a.authorid
join Award aw on b.bookid = aw.bookid
join AwardMaster awm on aw.awardtypeid = awm.awardtypeid
where awardid is not null
--2


--3
select authorname, count(authorid) as 'count' from Author
group by authorname
order by [count] desc
--4
select top 5* from Book
order by price desc
offset 4 row
fetch next 1 row only
--5	Select list of books which have same price as book ‘Diary of Ann Frank’.
select * from Book
Select * from Author
select * from Award
select * from AwardMaster
select bookname from Book where price=(select price from book where bookname='Diary of Ann Frank')
--6  Increase price of all books written by R.l stine by 5%.
update Book set price = price * 1.05 where authorid=(select authorid from Author where authorname ='R.L Stine')

--7	Show award names and number of books which got these awards
  --8 delete all books written by Walter S
  delete from Award where authorid=(select authorid from Author where authorname='Walter S')
   delete from Book where authorid in(select authorid from Author where authorname='Walter S')
   --9 

 
--12
select count(authorid) from Book b
inner join Author a on a.authorid=b.authorid
--13 
select a.authorname, ad.publisheddate
from Author a
inner join Book ad on ad.authorid=a.authorid
where ad.publisheddate< cast('1-1-2020' as date)
