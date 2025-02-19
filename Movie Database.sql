/*You manage a small movie database and need to retrieve data based on various conditions.*/
create table movies (
  id int,
  title varchar(25),
  genre varchar(15),
  release_year year,
  rating decimal(2,1),
  language varchar(15)
);

insert into movies
values(1, "Inception", "Sci-Fi", "2010", 8.8, "English"),
      (2, "Interstellar", "Sci-Fi", "2014", 8.6, "English"),
      (3, "Parasite", "Thriller", "2019", 8.6, "Korean"),
      (4, "Spirited Away", "Animation", "2001", 8.6, "Japanese"),
      (5, "The Dark Knight", "Action", "2008", 9.0, "English"),
      (6, "Tenet", "Sci-Fi", "2020", 7.4, "English");
      
/*  Find all Sci-Fi movies released after 2010. */
select * from movies
where genre = "sci-fi" and release_year > 2010; 

/*Find all movies that are either Sci-Fi or Action */
select * from movies
where genre = "sci-fi" or genre = "action";

/* Find all movies that are NOT in English */
select * from movies
where not language = "english";

   