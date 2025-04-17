/* Bank Transactions by Type */

create table transactions(
  txn_id int,
  account_id int,
  amount int,
  txn_type varchar(10)
);

insert into transactions
values(1, 1001, 500, "credit"),
      (2, 1002, 200, "debit"),
      (3, 1001, 300, "credit"),
      (4, 1002, 400, "debit");
      
/* Total amount per transaction */
select sum(amount) as Total_amount, txn_type from transactions
group by txn_type;