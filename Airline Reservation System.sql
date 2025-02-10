Retrieve Passenger Bookings with Flight Details
create table passengers(
   passenger_id int,
   name varchar(20),
   email varchar(25)
);

insert into passengers
values(1, "Alice", "alice@email.com"),
      (2, "Bob", "bob@email.com"),
      (3, "Charlie", "charmie@email.com");

create table flights(
  flight_id int,
  flight_number varchar(6),
  origin varchar(10),
  destination varchar(10),
  departure_time datetime
);

insert into flights
values(101, "AA123", "New York", "London", "2024-06-10 08:00:00"),
      (102, "BA456", "Paris", "Tokyo", "2024-06-12 14:00:00");

create table tickets(
   ticket_id int,
   passenger_id int,
   flight_id int,
   seat_number varchar(4),
   price decimal(5, 2),
   booking_date datetime
);

insert into tickets
values(1, 1, 101, "12A", 500.00, "2024-05-01 10:00:00"),
      (2, 2, 101, "14B", 500.00, "2024-05-02 12:00:00"),
      (3, 3, 102, "8C", 800.00, "2024-05-03 14:00:00");
      
select passengers.name, passengers.email, flights.flight_number, flights.origin, flights.destination, flights.departure_time, tickets.seat_number
from passengers
join tickets on passengers.passenger_id = tickets.passenger_id
join flights on tickets.flight_id = flights.flight_id;       
