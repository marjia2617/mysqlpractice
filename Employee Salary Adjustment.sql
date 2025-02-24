/* You are managing an employee database, and the company has 
decided to give a 10% salary hike to all employees who have 
been working for more than 5 years. */

create table employees_2(
  emp_id int,
  name varchar(10),
  department varchar(10),
  salary int,
  years_of_experience int
);

insert into employees_2
values(1, "Alice", "HR", 50000, 6),
      (2, "Bob", "IT", 60000, 4),
      (3, "Charlie", "Finance", 70000, 7),
      (4, "David", "IT", 55000, 3),
      (5, "Emma", "HR", 48000, 6);
      
update employees_2
set salary = salary * 1.10
where years_of_experience > 5;      