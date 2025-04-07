/* HR wants to list employees from IT, HR, and Marketing 
departments only. */

create table employee_8(
   id int primary key auto_increment,
   name varchar(10),
   department varchar(15)
);

insert into employee_8(name, department)
values("John", "IT"),
      ("Sarah", "Finance"),
      ("Rick", "HR"),
      ("Angela", "IT"),
      ("Monica", "Marketing");
      
/*   Get employees from IT, HR, or Marketing departments */
select * from employee_8
where department in ("it", "hr", "marketing");    