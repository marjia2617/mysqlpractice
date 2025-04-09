/* Create a combined report of all customer interactions 
(orders and returns). */

create table order_12(
  order_id int,
  customer_id int,
  order_date date,
  amount int
);

insert into order_12
values(1, 101, "2024-01-01", 100),
      (2, 102, "2024-01-03", 200),
      (3, 101, "2024-02-01", 150);

create table returns(
  return_id int,
  customer_id int,
  return_date date,
  amount int
);

insert into returns
values(1, 101, "2024-01-10", 50),
      (2, 103, "2024-02-02", 100);  
/*   List all transactions (orders + returns) with customer ID,
 date, amount, and type.   */
 
select * from order_12
union
select * from returns; 
