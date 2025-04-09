/* Merge students from current semester and alumni into one 
   list (avoiding duplicates). */
   
create table current_students(
   student_id int,
   name varchar(10)
); 

insert into current_students
values(1, "Alice"),
	  (2, "Bob"),
      (3, "Carol");

create table alumni(
  student_id int,
  name varchar(10)
);

insert into alumni
values(3, "Carol"),
      (4, "David"),
      (5, "Eva");
      
/*   Get a list of all unique students (current and alumni) 
     with no duplicates.    */
     
select * from current_students
union
select * from alumni;     
