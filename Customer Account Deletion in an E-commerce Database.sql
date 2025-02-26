/* An e-commerce platform allows users to delete their accounts.
 However, before deleting a customer, all their orders must be 
 deleted first due to foreign key constraints. */
 
create table customer_4(
  id int,
  name varchar(20),
  email varchar(20),
  created_at date
); 

insert into customer_4
values(3, "Alex", "alex@email.com", "2023-11-10"),
      (4, "John", "john@email.com", "2023-12-01"); 
      
delete from customer_4
where id = 3;      

create table order_5(
  id int,
  customer_id int,
  product_name varchar(10),
  order_date date
);

insert into order_5
values(1, 3, "Laptop", "2024-01-15"),
      (2, 3, "Mouse", "2024-02-10"),
      (3, 4, "Keyboard", "2024-02-12");
      
delete from order_5
where customer_id = 3;      
