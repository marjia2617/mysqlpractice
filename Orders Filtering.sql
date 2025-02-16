create table order_1(
    order_id int,
    customer_id int,
    status varchar(10),
    amount int,
    order_date date
);

insert into order_1
values(1, 101, "Completed", 150, "2024-01-10"),
      (2, 102, "Pending", 250, "2024-02-05"),
      (3, 103, "Shipped", 300, "2024-02-10"),
      (4, 104, "Completed", 400, "2024-01-20"),
      (5, 105, "Pending", 500, "2024-02-15");

      
select order_id from order_1
where status = "Pending";  

/*Find all pending orders.*/
select * from order_1 
where status = "Pending";

/*Retrieve orders placed in February 2024.*/
select * from order_1
where order_date between "2024-02-01" and "2024-02-28";

/*Get all completed or shipped orders above $200.*/
select * from order_1
where amount > 200 and (status = "Completed" or status = "Shipped");

