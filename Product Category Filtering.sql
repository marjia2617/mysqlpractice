/* You want to list only products from specific categories */

create table product_9(
  id int PRIMARY KEY auto_increment,
  name varchar(20),
  category varchar(12),
  price decimal(6, 2)
);

insert into product_9(name, category, price)
values("iphone 15", "Smartphone", 999.99),
      ("Galaxy s23", "Smartphone", 899.99),
      ("MacBook Pro", "Laptop", 1999.99),
      ("Sony Headphones", "Audio", 199.99),
      ("Dell XPS 13", "Laptop", 1299.99);
      
/*  Get all products from the 'Laptop' or 'Audio' category */
select * from product_9
where category in ("Laptop", "Audio");     