/* You want to retrieve orders placed by specific customers 
based on their IDs. */

create table order_10(
   id int PRIMARY KEY auto_increment,
   customer_id int,
   total_amount decimal(5,2),
   order_date date
);

insert into order_10(customer_id, total_amount, order_date)
values(1, 250.00, "2024-01-10"),
      (2, 125.00, "2024-01-11"),
      (3, 300.00, "2024-01-15"),
      (1, 500.00, "2024-02-01"),
      (4, 80.00, "2024-02-01");
      
/*   Get orders placed by customers with IDs 1 and 3 */
select * from order_10
where customer_id in ( 1 , 3);
    