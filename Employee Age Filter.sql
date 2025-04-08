/* You want to see all employees between the ages of 25 and 35. */

create table employee_9(
   id int primary key auto_increment,
   name varchar(9),
   age int
);

insert into employee_9(name, age)
values("John", 22),
      ("Alice", 28),
      ("Bob", 35),
      ("Eve", 31),
      ("Sam", 40);
      
/*  Get employees between 25 and 35 years old */
select * from employee_9
where age between 25 and 35;     