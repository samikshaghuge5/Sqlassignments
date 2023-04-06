create table Author
(authorid int primary key,
authorname varchar(20),phonenumber varchar(10), 
email varchar(10),address varchar(50), city varchar(10)
)
CREATE TABLE Book (
  bookid INT PRIMARY KEY,
  bookname VARCHAR(20),
  price DECIMAL(10, 2),
  publisheddate DATE,
  authorid INT,
  FOREIGN KEY (authorid) REFERENCES Author(authorid)
);
create table AwardMaster(awardtypeid int primary key,awardname varchar(50),awardprice decimal(10,2))
create table Award(awardid int primary key,
year int,
awardtypeid int,
  FOREIGN KEY (awardtypeid) REFERENCES AwardMaster(awardtypeid),
  authorid int,

  FOREIGN KEY (authorid) REFERENCES Author(authorid),
  bookid int,
  FOREIGN KEY (bookid) REFERENCES Book(bookid)

)

INSERT INTO Author (authorid, authorname, phonenumber, email, address, city)
VALUES
  (1, 'R.L Stine', '990946632', 'rl@g.com', '90 Place', 'London'),
  (2, 'Stephen King', '990237782', 'sk@g.com', '11 Street', 'Venice'),
  (3, 'Walter S', '990922233', 'ws@g.com', '22 Street', 'London');
  INSERT INTO Book (bookid, bookname, price, publisheddate, authorid)
VALUES
  (1, 'GooseBumps', 380, '1997-06-26', 1),
  (2, 'Victim', 799, '1977-01-28', 2),
  (3, 'Hidden Secret', 599, '1934-01-01', 3);
  INSERT INTO AwardMaster (awardtypeid, awardname, awardprice)
VALUES
  (1, 'Best Writer', 100000.00),
  (2, 'Nobel Prize', 500000.00),
  (3, 'Best Genre', 250000.00);
  INSERT INTO Award (awardid, year, awardtypeid, authorid, bookid)
VALUES
  (1, 2000, 2, 1, 1),
  (2, 1980, 1, 2, 2),
  (3, 1950, 3, 3, 3);

