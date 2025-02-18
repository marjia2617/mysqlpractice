create table workers(
   emp_id int,
   name varchar(10),
   department varchar(10),
   salary int,
   hire_date date,
   manager_id int
);

alter table workers
drop column manager_id;

insert into workers
values(1, "Alice", "HR", 50000, "2020-05-10"),
      (2, "Bob", "IT", 70000, "2019-07-15"),
      (3, "Charlie", "Sales", 45000, "2021-03-20"),
      (4, "David", "IT", 72000, "2018-11-05"),
      (5, "Eve", "HR", 52000, "2022-08-30"),
      (6, "Frank", "Sales", 48000, "2017-06-25");

alter table workers
add column manager_id int;

update workers
set manager_id = 1 where emp_id = 2;

update workers
set manager_id = 1 where emp_id = 3;

update workers
set manager_id = 2 where emp_id = 4;

update workers
set manager_id = 3 where emp_id = 5;

/*Retrieve employees who do not have a manager.*/
select name from workers 
where manager_id is null;

/*Find employees in IT or Sales who earn more than $50,000.*/
select name, department, salary from workers
where (department = "it" or department = "sales") and salary > 50000; 

/*Get employees hired before 2020 but not in HR*/
select name, department, hire_date from workers
where not department = "HR" and hire_date < "2020-01-01";

