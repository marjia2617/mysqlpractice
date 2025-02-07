create table employees(
   emp_id int,
   name varchar(25),
   department_id int,
   salary int
);

insert into employees
values(1, "Alice", 101, 60000),
	  (2, "Bob", 102, 55000),
      (3, "Charlie", 101, 70000),
      (4, "David", 103, 50000);
      
create table departments(
   department_id int,
   department_name varchar(10)
);

insert into departments
values(101, "HR"),
      (102, "IT"),
      (103, "FINANCE");

select employees.emp_id, employees.name, employees.salary, departments.department_name
from employees join departments on employees.department_id = departments.department_id;
