List Patients with Their Doctors and Appointment Dates
create table patients(
   patient_id int,
   name varchar(25),
   age int
);

insert into patients
values(1, "John", 45),
      (2, "Emma", 30),
      (3, "Ryan", 55);

create table doctors(
   doctor_id int,
   name varchar(25),
   specialization varchar(25)
);

insert into doctors
values(101, "Dr.Smith", "Cardiologist"),
      (102, "Dr.Brown", "Neurologist");

create table appointments(
   apppointment_id int,
   patient_id int,
   doctor_id int,
   appointment_date date
);

insert into appointments
values(1, 1, 101, "2024-02-01"),
      (2, 2, 102, "2024-02-05"),
      (3, 3, 101, "2024-02-10");
      
select patients.name as Patient_Name,  doctors.name as doctor_name, appointments.appointment_date
from  appointments
join patients on patients.patient_id = appointments.patient_id
join doctors on doctors.doctor_id = appointments.doctor_id;
   
