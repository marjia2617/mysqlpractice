/* You are managing an e-commerce database and need to analyze 
customer orders. */

create table order_8(
  order_id int,
  customer_id int,
  order_date date,
  total_amount decimal(10,2)
);

insert into order_8()
values(1, 1, "2024-03-01", 150.50),
      (2, 2, "2024-03-02", 200.00),
      (3, 1, "2024-03-03", 50.00),
      (4, 3, "2024-03-04", 300.75),
      (5, 2, "2024-03-05", 250.25),
      (6, 1, "2024-03-06", 100.00);

/*  Count total orders placed by each customer */     
SELECT customer_id, COUNT(order_id) AS total_orders
FROM order_8
GROUP BY customer_id;

/* find the total revenue from all orders */

select sum(total_amount) as total_revenue from order_8;