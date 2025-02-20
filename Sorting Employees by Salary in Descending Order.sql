/* Retrieve employee details sorted by salary in descending 
order. If two employees have the same salary, sort them in 
ascending order by name. */

create table employees(
  emp_id int,
  emp_name varchar(15),
  department varchar(15),
  salary decimal(6,2)
);

insert into employees
values(1, "John", "HR", 5000.00),
      (2, "Alice", "IT", 7500.00),
      (3, "Bob", "Finance", 6000.00),
      (4, "Charlie", "IT", 7500.00),
      (5, "David", "HR", 4500.00);
      
select * from employees
order by salary desc, emp_name asc;      