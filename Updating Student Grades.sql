/* A university decided to add 5 bonus marks to students who 
scored less than 50 in any subject. */

create table students_1(
  student_id int,
  name varchar(10),
  subject varchar(10),
  marks int
);

insert into students_1
values(1, "Alex", "Math", 45),
      (2, "Brain", "Science", 52),
      (3, "Chloe", "History", 48),
      (4, "David", "Math", 30),
      (5, "Emily", "Science", 55);
      
update students_1
set marks = marks + 5
where marks < 50;      