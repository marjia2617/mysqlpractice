/* Sales summary by products */

create table sales_1(
   sales_id int,
   product_name varchar(10),
   quantity int,
   amount int,
   sale_date date
);

insert into sales_1
values(1, "Apple", 5, 10, "2025-01-01"),
      (2, "Banana", 10, 20, "2025-01-01"),
      (3, "Apple", 2, 4, "2025-01-02"),
      (4, "Banana", 5, 10, "2025-01-03"),
      (5, "Orange", 4, 8, "2025-01-03");
      
select product_name, sum(quantity) as Total_Quantity, sum(amount) as Amount from sales_1
group by product_name;    

