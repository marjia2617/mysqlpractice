/* You're managing customer data and want to get all customers 
from a few specific cities. */

create table customer_6(
   id int PRIMARY KEY auto_increment,
   name varchar(10),
   email varchar(25),
   city varchar(15)
);

insert into customer_6(name, email, city)
values("Alice", "alice@example.com", "New York"),
      ("Bob", "bob@example.com", "Chicago"),
      ("Charlie", "Charlie@example.com", "Los Angeles"),
      ("David", "david@example.com", "New York"),
      ("Eve", "eve@example.com", "Miami");
      
/*  Find customers from New York, Chicago, or Miami */

select * from customer_6
where city in ("new york", "chicago", "miami");
