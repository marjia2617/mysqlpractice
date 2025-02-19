/* A company tracks employee details in a database and wants to filter records using conditions. */
create table employee(
  id int,
  name varchar(10),
  department varchar(15),
  salary int,
  experience int,
  city varchar(20)
);

insert into employee
values(1, "Alice", "IT", 75000, 5, "New York"),
      (2, "Bob", "HR", 60000, 3, "Chicago"),
      (3, "Charlie", "IT", 90000, 7, "New York"),
      (4, "Dave", "Marketing", 55000, 2, "Los Angeles"),
      (5, "Eve", "IT", 80000, 6, "San Francisco");
      
/*     Find employees in IT who earn more than $70,000. */
select * from employee
where department = "IT" and salary > 70000;

/*   Find employees in HR or Marketing */
select * from employee
where department = "HR" or department = "marketing";

/* Find employees who do not work in New York. */
select * from employee
where not city = "new york";
