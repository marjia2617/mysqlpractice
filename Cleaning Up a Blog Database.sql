/* A blogging platform wants to delete posts marked as spam. */

create table posts(
  id int,
  title varchar(30),
  is_spam int,
  created_at date
);

insert into posts
values(1, "Travel Tips", 0, "2024-01-10"),
      (2, "Win a Free iPhone", 1, "2024-01-15"),
      (3, "Best Coding Practices", 0, "2024-02-05"),
      (4, "Click Hear for Cash", 1, "2024-02-12");
      
delete from posts
where is_spam = 1;      