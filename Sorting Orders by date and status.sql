/* Retrieve order details sorted by order date (newest first). 
If multiple orders have the same date, sort by status 
(Pending first, then Shipped). */

create table order_3(
  order_id int,
  customer_name varchar(10),
  order_date date,
  status varchar(10)
);

insert into order_3
values(1, "Alice", "2024-02-10", "Shipped"),
      (2, "Bob", "2024-02-12", "Pending"),
      (3, "Charlie", "2024-02-11", "Pending"),
      (4, "David", "2024-02-12", "Shipped"),
      (5, "Emma", "2024-02-11", "Shipped");
      
select * from order_3
order by order_date desc, status asc;     