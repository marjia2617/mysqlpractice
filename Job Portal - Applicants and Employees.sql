/* Create a report that includes both job applicants and 
   current employees. */
   
create table applicants(
   name varchar(10),
   email varchar(20)
);   

insert into applicants
values("Aisha", "aisha@mail.com"),
      ("Brain", "brain@mail.com"),
      ("Carla", "carla@mail.com");
      
/*   List everyone who interacted with the company 
    (including duplicates):    */
    
select * from applicants
union all
select * from employee_10;    