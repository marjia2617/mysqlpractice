/* You’re tracking student test scores and want to list students with average grades above 70. */

create table grades(
 student_name varchar(10),
 subject varchar(10),
 score int
);

insert into grades values
("Ayesha", "Math", 75),
("Ayesha", "Science", 80),
("Tom", "Math", 60),
("Tom", "Science", 65),
("Nina", "Math", 85),
("Nina", "Science", 90);

SELECT student_name, AVG(score) AS avg_score
FROM grades
GROUP BY student_name
HAVING AVG(score) > 70;


