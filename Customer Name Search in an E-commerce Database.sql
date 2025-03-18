/* You are managing a customer database for an e-commerce store.
 You need to filter customer names based on search patterns. */
 
create table customers_6(
  id int,
  name varchar(15),
  email varchar(25),
  city varchar(20)
); 

insert into customers_6
values(1, "John Doe", "john@example.com", "New York"),
      (2, "Jane Smith", "jane@example.com", "Los Angeles"),
      (3, "Johnny Bravo", "bravo@example.com", "Miami"),
      (4, "Alice Johnson", "alice@example.com", "New York"),
      (5, "Bob Marley", "bob@example.com", "Kingston");
      
/*  Find all customers whose names start with "J": */

select * from customers_6 where name like "J%";

/*   Find all customers whose names contain "ohn": */

select * from customers_6 where name like "%ohn%"; 

/*  Find all customers whose names end with "son": */

select * from customers_6 where name like "%son";


      
      
      
      
      
      