/* A company wants to know the oldest and newest employees 
based on their joining date. */

create table employee_5(
  emp_id int,
  name varchar(10),
  department varchar(8),
  join_date date,
  salary int
);

insert into employee_5
value(1, "Alice", "HR", "2015-06-12", 60000),
     (2, "Bob", "IT", "2018-09-23", 75000),
     (3, "Charlie", "Sales", "2020-01-15", 50000),
     (4, "David", "IT", "2010-03-04", 90000),
     (5, "Emma", "HR", "2022-07-19", 55000);
     
select min(join_date) as old_employee
from employee_5;

select * from employee_5
where join_date = (select min(join_date) from employee_5);

select * from employee_5
where join_date = (select max(join_date) from employee_5);
    