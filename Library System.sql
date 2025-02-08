List Borrowers and Books They Borrowed
create table books(
   book_id int,
   title varchar(25),
   author varchar(25)
);

insert into books
values(1, "The Alchemist", "Paulo Coelho"),
      (2, "1984", "George Orwell"),
      (3, "Sapiens", "Yuval Harari");

create table borrowers(
   borrower_id int,
   name varchar(20)
);

insert into borrowers
values(1, "Alice"),
      (2, "Bob");

create table borrowed_book(
    borrow_id int,
    book_id int,
    borrower_id int,
    borrow_date date
);

insert into borrowed_book
values(1, 1, 1, "2024-01-05"),
      (2, 3, 2, "2024-01-12"),
      (3, 2, 1, "2024-01-15");
      
select borrowers.name, borrowed_book.book_id, books.title, books.author
from borrowers 
JOIN borrowed_book ON borrowers.borrower_id = borrowed_book.borrower_id  
JOIN books ON borrowed_book.book_id = books.book_id;
