/*  You are managing an HR database, and you need to find employees based on name patterns. */

create table employee_7(
   id int,
   name varchar(20),
   department varchar(10),
   email varchar(25)
);

insert into employee_7
values(1, "Alice Johnson", "IT", "alice@company.com"),
      (2, "Bob Robertson", "Finance", "bob@company.com"),
      (3, "Charlie Brown", "HR", "charlie@company.com"),
      (4, "David Ronald", "IT", "dave@company.com"),
      (5, "Eve Adams", "Marketing", "eve@company.com");
      
/*    Find all employees whose names start with 'A': */
select * from employee_7 where name like "a%";

/*    Find all employees whose names contain 'o' in the second position (e.g., Bob, Rob, etc.): */
select * from employee_7 where name like "_o%";

/* Find all employees whose names end with 'son': */
select * from employee_7 where name like "%son";
