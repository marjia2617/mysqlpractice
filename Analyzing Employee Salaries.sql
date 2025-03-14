/* You need to analyze the salaries of employees in different 
departments. */

create table employee_6(
  emp_id int,
  name varchar(10),
  department varchar(10),
  salary decimal(10,2)
);

insert into employee_6
values(1, "Alice", "IT", 60000),
      (2, "Bob", "HR", 55000),
      (3, "Charlie", "IT", 75000),
      (4, "David", "Sales", 50000),
      (5, "Emma", "Sales", 48000),
      (6, "Frank", "HR", 62000);

/*    Find the average salary in each department */
   
select department, avg(salary) as averageSalary
from employee_6
group by department; 

/* Count the number of employees in each department */

select department, count(emp_id) as NumberofEmployee
from employee_6
group by department;      