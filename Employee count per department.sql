/* Employee Count per Department */

create table employee_11(
   emp_id int,
   name varchar(10),
   department varchar(8)
);

insert into employee_11
values(1, "Alice", "HR"),
      (2, "Bob", "IT"),
      (3, "Charlie", "IT"),
      (4, "David", "Sales"),
      (5, "Emma", "HR");
      
select count(*) as Number_of_Employee, department
from employee_11
group by department;      