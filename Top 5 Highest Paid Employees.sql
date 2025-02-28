/* You have an employees table with employee salaries. Retrieve
 the top 5 highest-paid employees. */
 
create table employee_4(
  id int,
  name varchar(10),
  department varchar(10),
  salary int
); 

insert into employee_4
values(1, "Alex", "IT", 80000),
	  (2, "Brain", "HR", 50000),
      (3, "Clara", "IT", 75000),
      (4, "David", "Finance", 90000),
      (5, "Emma", "IT", 95000),
      (6, "Frank", "HR", 45000),
      (7, "Grace", "Finance", 85000);
      
select name, department, salary
from employee_4
order by salary desc limit 5;      