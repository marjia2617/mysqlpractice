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