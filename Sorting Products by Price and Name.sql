/* Given a products table, display all products sorted first 
by price (ascending), and if two products have the same price,
 sort them alphabetically by name. */
 
create table product_1(
   product_id int,
   product_name varchar(15),
   price decimal(6,2)
); 

insert into product_1
values(1, "Loptop", 1200.00),
      (2, "Mouse", 25.99),
      (3, "Keyword", 50.00),
      (4, "Monitor", 200.00),
      (5, "USB Drive", 25.99),
      (6, "Speakers", 50.00);
      
select * from product_1
order by price asc, product_name asc;      