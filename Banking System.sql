/* A bank tracks customer accounts, balances, and transactions */
create table customers(
   id int,
   name varchar(10),
   account_type varchar(15),
   balance int,
   city varchar(15),
   status varchar(10)
);

insert into customers
values(1, "John Doe", "Savings", 5000, "New York", "Active"),
      (2, "Alice", "Checking", 1000, "Chicago", "Inactive"),
      (3, "Mark", "Savings", 8000, "Los Angeles", "Active"),
      (4, "Sophia", "Business", 1200, "San Diego", "Active");
      
      
/* Find all customers with a balance above $5000 and an active status */
select * from customers
where balance > 5000 and status = "active";

/* Find all customers who have either a Savings or Business account. */
select distinct * from customers
where account_type in ("savings", "business");

/* Find all customers who do not have a Checking account */
select distinct * from customers
where not account_type = "checking";

