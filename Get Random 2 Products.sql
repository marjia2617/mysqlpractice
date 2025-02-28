/* You want to display 2 random products from the products 
table. */

create table product_5(
  id int,
  name varchar(10),
  price int
);

insert into product_5
values(1, "Laptop", 1000),
      (2, "Phone", 700),
      (3, "Tablet", 500),
      (4, "Monitor", 300),
      (5, "Keyboard", 50);
      
select * from product_5
order by rand()
limit 2;      