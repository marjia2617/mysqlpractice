/*  You have an e-commerce database with products and sales. 
Retrieve the top 3 best-selling products in each category based 
on total quantity sold. */

create table product_6(
  id int,
  name varchar(15),
  category varchar(12),
  price int
);

insert into product_6
values(1, "Laptop", "Electronics", 1000),
      (2, "Phone", "Electronics", 700),
      (3, "Tablet", "Electronics", 500),
      (4, "Headphones", "Accessories", 200),
      (5, "Mouse", "Accessories", 50),
      (6, "Keyboard", "Accessories", 80);

create table sales(
  id int,
  product_id int,
  quantity int
);

insert into sales
values(1, 1, 20),
      (2, 2, 35),
      (3, 3, 25),
      (4, 4, 50),
      (5, 5, 10),
      (6, 6, 30);
      
select product_6.category, product_6.name, sales.quantity
from product_6
inner join sales on product_6.id = sales.id
order by category, quantity desc limit 6;      
