Retrieve Guest Bookings with Room Details
create table guests(
   guest_id int,
   name varchar(20)
);

insert into guests
values(1, "Alex"),
      (2, "Emma"),
      (3, "James");

create table rooms(
   room_id int,
   room_type varchar(20),
   price int
);

insert into rooms
values(101, "Deluxe", 150),
      (102, "Standard", 100);

create table bookings(
   booking_id int,
   guest_id int,
   room_id int,
   check_in_date date,
   check_out_date date
);

insert into bookings
values(1, 1, 101, "2024-03-01", "2024-03-05"),
      (2, 2, 102, "2024-03-02", "2024-03-06"),
      (3, 3, 101, "2024-03-10", "2024-03-15");
      
select guests.name, rooms.room_type, rooms.room_id, bookings.check_in_date, bookings.check_out_date
from bookings
join rooms on bookings.room_id = bookings.room_id
join guests on guests.guest_id = bookings.guest_id;       
