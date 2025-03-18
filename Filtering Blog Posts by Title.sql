/*  You manage a blogging website where users search for 
articles using keywords. */

create table blog_posts(
  id int,
  title varchar(40),
  content text,
  author varchar(10)
);

insert into blog_posts
values(1, "How to Learn MySQL Efficiently", "Content about MySQL", "Alice"),
      (2, "Best Travel Destinations in Japan", "Content about Japan", "Bob"),
      (3, "10 Tips for JavaScript Developers", "Content about JS", "Charlie"),
      (4, "Understanding SQL Joins with Example", "Content about SQL", "David");
      
/*  Find all blog posts with "SQL" in the title: */
select * from blog_posts where title like "%sql%";

/*  Find all blog posts that start with "10 Tips": */
select * from blog_posts where title like "10 tips%";

/* Find all blog posts written by an author whose name starts with "A": */
select * from blog_posts where author like "a%";