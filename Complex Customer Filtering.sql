SELECT * FROM mydb.customer;

alter table customer
add column last_order_date date;

update customer
set last_order_date = "2024-01-15" where cust_id = 1;

update customer
set last_order_date = "2023-12-10" where cust_id = 2;

update customer
set last_order_date = "2024-02-05" where cust_id = 3;

update customer
set last_order_date = "2022-11-20" where cust_id = 4;

insert into customer
values(6, "Sophia", "Chicago", 50, 8000, "2023-05-30");

/*Find customers who have spent more than $4,000 but haven’t placed an order in 2024.*/
select name, total_spent, last_order_date from customer
where total_spent > 4000 and last_order_date not between "2024-01-01" and "2024-12-31";

/*Get customers from New York or Los Angeles who have spent at least $3,000.*/
select name, city, total_spent from customer
where city in ( "New York" , "Los Angeles") and total_spent >= 3000;

/*Retrieve customers older than 30, who have either spent more than $5,000 or placed an order in 2024.*/
select name, age, total_spent, last_order_date from customer
where age > 30 and total_spent > 5000 and last_order_date between "2024-01-01" and "2024-12-31";


