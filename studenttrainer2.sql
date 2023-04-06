SELECT c.coursename, SUM(s.feespaid) as total_revenue
FROM Course c
INNER JOIN Student s ON c.courseid = s.courseid
GROUP BY c.coursename
ORDER BY total_revenue DESC
--8
SELECT s.sname
FROM Student s
INNER JOIN Student atul ON s.batchid = atul.batchid
WHERE atul.sname = 'Atul';
--9
DELETE FROM Student
WHERE courseid IN (
  SELECT c.courseid
  FROM Course c
  WHERE c.duration < 2
);
--10
DELETE FROM Student
WHERE isplaced = '1' AND feespaid = (
  SELECT totalfees
  FROM Course
  WHERE courseid = Student.courseid
);
--13
--14
SELECT sname
FROM Student
WHERE feespaid >= (SELECT totalfees FROM Course WHERE courseid = Student.courseid);



