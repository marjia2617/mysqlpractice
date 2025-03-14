/* You are analyzing student performance in different 
   subjects. */
   
create table student_scores(
  student_id int,
  name varchar(10),
  subject varchar(10),
  score int
);   

insert into student_scores
values(1, "John", "Math", 85),
      (2, "John", "Science", 78),
      (3, "John", "English", 90),
      (4, "Emma", "Math", 92),
      (5, "Emma", "Science", 88),
      (6, "Emma", "English", 95),
      (7, "Mike", "Math", 76),
      (8, "Mike", "Sceince", 80),
      (9, "Mike", "English", 70);
      
/*   Find the average score of each student */
select name as student_name, avg(score) as Average_Score
from student_scores
group by name;

/* Find the total score each student has obtained */
select name as Student_name, sum(score) as Total_Score
from student_scores
group by name;

/* Find how many students took each subject */
SELECT subject, COUNT(DISTINCT name) AS student_count
FROM student_scores
GROUP BY subject;

    