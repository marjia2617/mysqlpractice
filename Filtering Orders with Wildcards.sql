/* You need to filter orders where the order codes follow certain patterns. */

create table order_9(
   id int PRIMARY KEY auto_increment,
   order_code varchar(15),
   customer_id int,
   amount decimal(5, 2)
);

insert into order_9(order_code, customer_id, amount)
values("ORD12345", 1, 250.00),
      ("ORD67890", 2, 120.50),
      ("INV98765", 3, 300.00),
      ("ORD54321", 4, 500.00),
      ("INV11223", 5, 100.75);
      
/* Find all orders whose order code starts with 'ORD': */
select * from order_9
where order_code like "ord%";

/* Find all orders whose order code contains '12' anywhere: */
select * from order_9
where order_code like "%12%";

/* Find all orders where the second character is 'N' */
select * from order_9
where order_code like "_n%";

select * from order_9
where order_code like "__d%";