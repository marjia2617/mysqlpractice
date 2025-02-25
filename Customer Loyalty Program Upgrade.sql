/* A retail store is upgrading all "Silver" customers to "Gold"
 if they have spent more than $5000 in total. */
 
create table customer_3(
  customer_id int,
  name varchar(10),
  membership varchar(10),
  total_spend int
);
  
insert into customer_3
values(101, "John", "Silver", 6000),
      (102, "Sarah", "Gold", 8000),
      (103, "Mike", "Silver", 4500),
      (104, "Emma", "Silver", 7000),
      (105, "Jack", "Platinum", 15000); 
      
update customer_3
set membership = "Gold"
where total_spend > 5000;      