/* An e-commerce platform tracks product details and wants to filter products based on various conditions. */
create table product(
  id int,
  name varchar(10),
  category varchar(15),
  price int,
  stock int,
  rating decimal(2,1)
);

insert into product
values(1, "Laptop", "Electronics", 1000, 20, 4.5),
      (2, "Phone", "Electronics", 800, 10, 4.2),
      (3, "Shoes", "Fashion", 100, 50, 4.0),
      (4, "TV", "Electronics", 1200, 15, 4.8),
      (5, "Jacket", "Fashion", 150, 30, 4.3);
      
/* Find all electronics that cost more than $900. */
select * from product
where price > 900;

select * from product
where category = "Electronics" and price > 900;

/* Find all products that are either in Electronics or Fashion.*/
select * from product
where category in ("electronics", "fashion");

/*    Find all products that are NOT in stock */
select * from product
where stock is null;