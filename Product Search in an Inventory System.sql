/* You are working for a retail company, and you need to search
 for products based on partial names. */
 
create table product_8(
  id int,
  product_name varchar(30),
  category varchar(15),
  price decimal(6, 2)
); 

insert into product_8
values(1, "Samsung Galaxy S23", "SmartPhone", 999.99),
      (2, "Apple iPhone 15", "SmartPhone", 1199.99),
      (3, "Sony Bravia OLED TV", "Electronics", 1499.99),
      (4, "LG Refrigerator", "Appliances", 899.99),
      (5, "Apple MacBook Pro", "Laptop", 1999.99);
      
/*  Find all products with "Apple" in the name: */
select * from product_8 where product_name like "%apple%";

/*   Find all products that start with "S": */
select * from product_8 where product_name like "s%";

/* Find all products in the "Smartphone" category that have 
"Galaxy" in the name: */
select * from product_8 where product_name like "%galaxy%"
and category = "smartphone";

  

 