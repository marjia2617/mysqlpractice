create table employees_1(
   emp_id int,
   name varchar(10),
   department varchar(10),
   salary int,
   hire_date date
);

insert into employees_1
values(1, "Alice", "HR", 50000, "2020-05-10"),
      (2, "Bob", "IT", 70000, "2019-07-15"),
      (3, "charlie", "Sales", 45000, "2021-03-20"),
      (4, "David", "IT", 72000, "2018-11-05"),
      (5, "Eve", "HR", 52000, "2022-08-30");
      
select name, department from employees_1
where department = "IT";      

select name, hire_date from employees_1
where hire_date > "2020-01-01";

select name, salary from employees_1
where salary between 50000 and 70000;