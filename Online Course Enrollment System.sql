Retrieve Students with Their Enrolled Courses and Instructors
create table students(
   student_id int,
   name varchar(10)
);

insert into students
value(1, "Alice"),
     (2, "Bob"),
     (3, "Charlie");

create table courses(
   course_id int,
   course_name varchar(20),
   instructor varchar(25)
);

insert into courses
value(101, "SQL Basics", "Prof John"),
     (102, "Python 101", "Dr Emma");

create table enrollments(
   enrollment_id int,
   student_id int,
   course_id int,
   enrollment_date date
);

insert into enrollments
value(1, 1, 101, "2024-01-10"),
     (2, 2, 102, "2024-01-15"),
     (3, 3, 101, "2024-01-20");
     
select students.name, students.student_id, courses.course_id, courses.course_name, courses.instructor
from enrollments
join students on students.student_id = enrollments.student_id
join courses on courses.course_id = enrollments.course_id;     
