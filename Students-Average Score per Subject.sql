/* Students-Average score per subject */

create table marks(
   student_id int,
   subject varchar(10),
   score int
);

insert into marks
values(1, "Math", 80),
      (2, "Math", 70),
      (1, "Science", 90),
      (2, "Science", 85),
      (3, "Math", 60);
      
select subject, avg(score) as Average_Score
from marks
group by subject;      