/* A library wants to delete an author and all their books, 
but before deleting a book, any active borrow records must also
 be removed. */

/* Delete all borrow records for books written by author_id = 5.
   Delete all books by author_id = 5.
   Finally, delete the author. */
 
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

create table books_1(
  id int,
  title varchar(20),
  author_id int,
  published_year year
);

insert into books_1
values(10, "Harry Potter", 5, 1997),
      (11, "Game of Thrones", 6, 1996);
      
delete from books_1
where author_id = 5;      

create table borrow_records_table(
  id int,
  book_id int,
  user_id int,
  borrow_date date,
  return_date date
);

insert into borrow_records_table(id, book_id, user_id, borrow_date)
values(20, 10, 101, "2024-01-05");
