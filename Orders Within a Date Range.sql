/* You're managing online orders and want to see which ones 
were placed in January 2024. */

create table order_11(
   id int primary key auto_increment,
   customer_name varchar(10),
   total_amount decimal(5,2),
   order_date date
);

insert into order_11(customer_name, total_amount, order_date)
values("Alice", 250.00, "2024-01-02"),
      ("Bob", 120.00, "2024-01-15"),
      ("Charlie", 300.00, "2024-02-01"),
      ("David", 450.00, "2024-01-25"),
      ("Eve", 99.99, "2024-03-10");
      
/*   Find orders placed between January 1 and January 31, 2024 */
select * from order_11
where order_date between "2024-01-01" and "2024-01-31"; 