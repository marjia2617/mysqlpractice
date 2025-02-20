/* A library tracks book collections and their availability. */
create table books(
  book_id int,
  title varchar(20),
  author varchar(20),
  genre varchar(15),
  available varchar(5),
  year_published year
);

insert into books
values(1, "The Alchemist", "Paulo Coelho", "Fiction", "Yes", 1988),
      (2, "Sapiens", "Yuval Harari", "Non-Fiction", "No", 2011),
      (3, "1984", "George Orwell", "Fiction", "Yes", 1949),
      (4, "Atomic Habits", "James Clear", "Self-Help", "No", 2018),
      (5, "Dune", "Frank Herbert", "Sci-Fi", "Yes", 1965);
      
/*   Find all books that are Fiction and available. */
select * from books
where genre = "Fiction" and  available = "yes";

/* Find all books that are either Sci-Fi or Self-Help. */
select * from books
where genre in ("Sci-Fi", "Self-Help");

/* Find all books that are not available */
select * from books
where available = "No";