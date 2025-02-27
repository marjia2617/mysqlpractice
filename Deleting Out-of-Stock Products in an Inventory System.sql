/* A warehouse wants to delete products that are no longer in 
stock. */

create table product_3(
  id int,
  product_name varchar(12),
  stock_quantity int,
  price int
);

insert into product_3
values(1, "Laptop", 10, 1200),
      (2, "Mouse", 0, 25),
      (3, "Keyboard", 5, 50),
      (4, "Headphones", 0, 75);
      
delete from product_3
where stock_quantity = 0;      