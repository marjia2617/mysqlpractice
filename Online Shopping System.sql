/* An online store tracks customers, their orders, and delivery details */
create table order_2(
  order_id int,
  customer_name varchar(10),
  product varchar(15),
  category varchar(15),
  price int,
  status varchar(15),
  city varchar(15)
);

insert into order_2
values(1, "Robert", "Laptop", "Electronics", 1200, "Shipped", "New York"),
      (2, "Lisa", "Shoes", "Fashion", 80, "Pending", "Chicago"),
      (3, "David", "Phone", "Electronics", 900, "Delivered", "Los Angeles"),
      (4, "Emma", "Handbag", "Fashion", 150, "Shipped", "San Diego"),
      (5, "John", "Watch", "Accessories", 200, "Cancelled", "New York");
      
/*  Find orders that are either in Electronics category and above $1000 or in Fashion category. */
select * from order_2
where category = "Electronics" and price > 1000 or category = "Fashion";

/* Find orders that have been shipped but are not from New York */
select distinct * from order_2
where status = "Shipped" and not city = "New York";

/* Find orders that are either pending or cancelled */
select distinct * from order_2
where status = "pending" or status ="cancelled";
	