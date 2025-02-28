/* You have a customers table. Retrieve the second page of 
customer records with 5 records per page.  */

create table customer_5(
  id int,
  name varchar(10),
  city varchar(10)
);

insert into customer_5
values(1, "John", "New York"),
      (2, "Alice", "Chicago"),
      (3, "Bob", "Dallas"),
      (4, "Sarah", "Miami"),
      (5, "Mike", "Seattle"),
      (6, "Jenny", "Austin"),
      (7, "Liam", "Denver"),
      (8, "Sophia", "Houston"),
      (9, "Noah", "Altanta"),
      (10, "Emma", "Boston");
      
select * from customer_5
limit 5 offset 5;      