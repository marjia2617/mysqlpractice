/* In an e-commerce store, all orders placed more than 7 days 
ago but still marked as "Pending" should be updated to "Shipped"
. */

create table orders_5(
  order_id int,
  customer_name varchar(10),
  status varchar(10),
  order_date date
);

insert into orders_5
values(1, "John", "Pending", "2025-02-10"),
      (2, "Sarah", "Shipped", "2025-02-15"),
      (3, "Mike", "Pending", "2025-02-05"),
      (4, "Emma", "Pending", "2025-02-01"),
      (5, "Jack", "Shipped", "2025-02-18");

UPDATE orders_5
SET status = 'Shipped'
WHERE status = 'Pending' AND order_date < DATE_SUB(CURDATE(), 
INTERVAL 7 DAY);















