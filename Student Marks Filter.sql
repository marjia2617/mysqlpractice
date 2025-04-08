/* You want to find students who scored between 60 and 80 marks. */

create table student(
   id int primary key auto_increment,
   name varchar(10),
   marks int
);

insert into student(name, marks)
values("Ayesha", 55),
      ("Rahul", 65),
      ("Sana", 78),
      ("Tom", 88),
      ("Nina", 72);
      
/*  Find students who scored between 60 and 80   */
select * from student
where marks between 60 and 80;
