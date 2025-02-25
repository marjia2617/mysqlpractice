/* A bank wants to reset the account balance to $0 for customers
 who haven’t made a transaction in the last year. */
 
create table accounts(
  account_id int,
  customer_name varchar(10),
  balance int,
  last_transaction_date date
); 

insert into accounts
values(201, "Alice", 1500, "2023-02-10"),
      (202, "Bob", 500, "2025-01-15"),
      (203, "Charlie", 2000, "2023-12-20"),
      (204, "David", 750, "2022-09-01"),
      (205, "Emma", 1800, "2024-01-25");
      
UPDATE accounts
SET balance = 0
WHERE last_transaction_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);