/* A company wants to reduce the price of products that have 
less than 50 units in stock by 15% to clear old inventory. */

create table products_2(
   product_id int,
   product_name varchar(10),
   price int,
   stock int
);

insert into products_2
values(101, "Laptop", 800, 30),
      (102, "Phone", 500, 70),
      (103, "Tablet", 300, 45),
      (104, "TV", 1200, 20),
      (105, "Speaker", 100, 90);
      
update products_2
set price = price - (price *  0.15)
where stock < 50;     