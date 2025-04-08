/* A customer wants to see all products priced between $100 
and $1000. */

create table product_10(
   id int primary key auto_increment,
   name varchar(20),
   price decimal(5,2)
);

insert into product_10(name, price)
values("iPhone 15", 999.99),
      ("Galaxy s23", 899.99),
      ("Bluetooth Speaker", 79.99),
      ("Sony TV", 149.99),
      ("Dell Monitor", 199.99);
      
/*   Find products priced between $100 and $1000 */
select * from product_10
where price between 100 and 1000;
     

