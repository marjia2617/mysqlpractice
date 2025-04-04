/* You manage an inventory database and need to find products
 with specific patterns. */
 
create table products_9(
   id int,
   product_name varchar(25),
   category varchar(15),
   price decimal(6,2)
); 

insert into products_9
values(1, "Samsung Galaxy S23", "Smartphone", 999.99),
      (2, "Apple iPhone 15", "Smartphone", 1199.99),
      (3, "Sony Bravia OLED TV", "Electronics", 1499.99),
      (4, "LG Refrigerator", "Appliances", 899.99),
      (5, "Apple MacBook Pro", "Laptop", 1999.99);
      
/*  Find all products with "Apple" in the name:  */
select * from products_9
where product_name like "%apple%";

/* Find all products that start with "S": */
select * from products_9
where product_name like "s%";

/* Find all products in the "Smartphone" category that have 
 "Galaxy" in the name: */
select * from products_9
where category = "smartphone" and product_name like "%galaxy%"; 