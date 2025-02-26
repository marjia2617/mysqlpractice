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