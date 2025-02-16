create table customer(
  cust_id int,
  name varchar(10),
  city varchar(20),
  age int,
  total_spent int
);

insert into customer
values(1, "John", "New York", 35, 5000),
      (2, "Emma", "Los Angeles", 28, 3000),
      (3, "Noah", "Chicago", 40, 7000),
      (4, "Olivia", "New York", 23, 2000),
      (5, "Liam", "Los Angeles", 30, 4500);
      
select name from customer
where city = "New York";

select name from customer
where total_spent > 4000;

select name from customer
where age >= 30 and city in ("Los Angeles", "Chicago");      
      
      