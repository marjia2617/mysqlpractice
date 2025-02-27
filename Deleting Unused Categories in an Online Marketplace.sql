/* An e-commerce company wants to delete categories that have 
no products assigned to them. */

create table categories(
  id int,
  category_name varchar(10)
);

insert into categories
values(1, "Electronics"),
      (2, "Fashion"),
      (3, "Books");
      
delete from categories
where id not in (select category_id from product_4);  

create table product_4(
  id int,
  product_name varchar(10),
  category_id int
);

insert into product_4
values(10, "Laptop", 1),
      (11, "Shirt", 2);
      
delete from categories
where id not in (select category_id from product_4);      
