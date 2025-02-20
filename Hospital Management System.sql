/* A hospital keeps track of patient information, doctor assignments, and treatment records. */
create table patients(
  id int,
  name varchar(10),
  age int,
  disease varchar(15),
  admitted_date date,
  doctor_assigned varchar(15),
  city varchar(15)
);

insert into patients
values(1, "John Doe", 45, "Diabetes", "2024-02-10", "Dr.Smith", "New York"),
      (2, "Alice", 30, "Flu", "2024-02-12", "Dr.Brown", "Chicago"),
      (3, "Mark", 55, "Hypertension", "2024-01-20", "Dr.Smith", "Los Angeles"),
      (4, "Sophia", 27, "Covid-19", "2024-02-15", "Dr. Johnson", "San Diego"),
      (5, "Liam", 40, "Flu", "2024-02-18", "Dr.Brown", "New York");
      
/* Find patients admitted for Flu and assigned to Dr. Brown. */
select * from patients
where disease = "flu" and doctor_assigned = "Dr.Brown";

/* Find patients who are either above 50 years old or suffering from Covid-19. */
select * from patients
where age > 50 or disease = "covid-19";

/* Find patients who are not admitted in New York. */
select * from patients
where not city = "New York";

