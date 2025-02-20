/* You have a customers table where each customer has made a 
purchase. Write a query to list customers in descending order 
of their total purchase amount. */

create table customer_1(
  customer_id int,
  name varchar(10),
  total_purchase decimal(5,2)
);

insert into customer_1()
values(1,"Alice", 250.50),
      (2, "Bob", 500.75),
      (3, "Charlie", 120.00),
      (4, "David", 750.00),
      (5, "Emma", 300.25);
      
select distinct * from customer_1
order by total_purchase desc;      