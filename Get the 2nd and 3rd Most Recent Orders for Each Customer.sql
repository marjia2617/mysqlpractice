/*  Retrieve the 2nd and 3rd most recent orders for each 
customer from an orders table. */

create table order_7(
  id int,
  customer_id int,
  order_date date,
  total_price int
);

insert into order_7
values(1, 1, "2024-02-01", 300),
      (2, 1, "2024-02-10", 500),
      (3, 1, "2024-02-15", 400),
      (4, 2, "2024-01-05", 250),
      (5, 2, "2024-01-10", 600),
      (6, 2, "2024-01-15", 700);
      
select customer_id, order_date from order_7
order by order_date 
limit 4 offset 2;      