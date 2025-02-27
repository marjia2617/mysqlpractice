/* A library wants to delete an author and all their books, 
but before deleting a book, any active borrow records must also
 be removed. */
 
create table authors(
  id int,
  name varchar(25),
  nationality varchar(15)
); 

insert into authors
values(5, "J.K.Rowling", "British"),
      (6, "George R.R.Martin", "American");
      
/* Delete all borrow records for books written by 
author_id = 5. */

delete from authors
where id = 5;