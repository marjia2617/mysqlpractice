SELECT * FROM mydb.order_1;

alter table order_1
add column shipped_date date;

insert into order_1
values(6, 106, "Shipped", 450, "2023-12-20", "2023-12-22");

update order_1
set shipped_date = "2024-01-12" where order_id = 1;

update order_1
set shipped_date = "2024-02-12" where order_id = 3;

update order_1
set shipped_date = "2024-01-22" where order_id = 4;

/*Find all orders that are still pending (i.e., shipped_date is NULL).*/
select * from order_1
where status = "pending";

/*Get orders completed or shipped that had an amount greater than $300 */
select * from order_1
where status in ("completed",  "shipped") and amount > 300;

/*Retrieve orders where the order date and shipped date are in different months.*/
select * from order_1
where month(order_date) != month(shipped_date);