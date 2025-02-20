/* A university tracks student enrollments, courses, and professors. */
create table students(
  id int,
  name varchar(10),
  age int,
  course varchar(15),
  gpa decimal(2,1),
  professor varchar(15),
  city varchar(15)
);

insert into students
values(1, "Sarah", 22, "Computer Sci", 3.8, "Dr.Allen", "New York"),
      (2, "James", 25, "Mathematics", 3.2, "Dr.Lee", "Chicago"),
      (3, "Emma", 21, "Business", 3.9, "Dr.Smith", "Los Angeles"),
      (4, "Michael", 23, "Physics", 3.5, "Dr.Carter", "San Diego"),
      (5, "Olivia", 20, "Computer Sci", 3.7, "Dr. Allen", "Chicago");
      
/* Find students enrolled in Computer Science with a GPA above 3.5. */
select * from students
where gpa > 3.5 and course = "Computer Sci";

/*Find students who are either studying Physics or have a GPA higher than 3.7. */ 
select * from students
where course = "Physics" or gpa > 3.7; 

/* Find students who are not from Chicago. */
select * from students
where not city = "Chicago";

   