create table customers(
    customer_id int,
    name varchar(25)
);

insert into customers
value(1, "John"),
     (2, "Emma"),
     (3, "Rayn");

create table orders(
    order_id int,
    customer_id int,
    order_date date
);

insert into orders
value(101, 1, "2024-01-10"),
     (102, 2, "2024-01-15"),
     (103, 1, "2024-01-20");

create table order_items(
   item_id int,
   order_id int,
   product_name varchar(25),
   price decimal(5,2)
);

insert into order_items
value(1, 101, "Laptop", 800.00),
     (2, 102, "Phone", 500.00),
     (3, 103, "Tablet", 300.00);

Get Customers with Their Orders and Items

select customers.name, orders.order_id, order_items.product_name
from customers 
join orders on customers.customer_id = orders.customer_id
join  order_items on orders.order_id = order_items.order_id;
