Retrieve User Subscriptions with Watched Movies
create table users(
   user_id int,
   name varchar(20),
   email varchar(25)
);

insert into users
values(1, "Alice", "alice@email.com"),
      (2, "Bob", "bob@email.com"),
      (3, "Ryan", "ryan@email.com");

create table subscriptions(
   subscription_id int,
   user_id int,
   plan_type varchar(20),
   start_date date
);

insert into subscriptions
values(101, 1, "Premium", "2024-01-01"),
      (102, 2, "Basic", "2024-02-01"),
      (103, 3, "Standard", "2024-03-01");

create table watched_movies(
  watch_id int,
  user_id int,
  movie_name varchar(20),
  watch_date date
);

insert into watched_movies
values(1, 1, "Inception", "2024-05-01"),
      (2, 2, "The Matrix", "2024-05-02"),
      (3, 3, "Interstellar", "2024-05-03");

select users.name, users.email, subscriptions.plan_type, subscriptions.start_date, watched_movies.watch_date
from watched_movies
join subscriptions on watched_movies.user_id = subscriptions.user_id
join users on watched_movies.user_id = users.user_id;



