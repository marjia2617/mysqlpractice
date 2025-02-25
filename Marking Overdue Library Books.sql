/* A library wants to mark books as "Overdue" if they haven’t 
been returned within 30 days of the borrow date. */

create table library_loans(
  loan_id int,
  book_title varchar(10),
  borrower_name varchar(10),
  status varchar(15),
  borrow_date date
);

insert into library_loans
values(1, "Book A", "Alice", "Borrowed", "2025-01-10"),
      (2, "Book B", "Bob", "Returned", "2025-02-05"),
      (3, "Book C", "Charlie", "Borrowed", "2025-01-01"),
      (4, "Book D", "David", "Borrowed", "2025-01-15"),
      (5, "Book E", "Emma", "Returned", "2025-02-01");
      
UPDATE library_loans
SET status = "Overdue"
WHERE status = "Borrowed" AND borrow_date < DATE_SUB(CURDATE(), INTERVAL 30 DAY);