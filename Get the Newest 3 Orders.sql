/* Your e-commerce database has an orders table. Retrieve the 3 
most recent orders. */

create table order_6(
  id int,
  customer_name varchar(10),
  order_date date,
  total_price int
);

insert into order_6
values(1, "Alice", "2024-01-15", 250),
      (2, "Bob", "2024-02-10", 400),
      (3, "Clara", "2024-02-15", 300),
      (4, "David", "2024-03-01", 500),
      (5, "Emma", "2024-03-05", 600),
      (6, "Frank", "2024-03-10", 700);
      
select * from order_6
order by order_date desc limit 3;      