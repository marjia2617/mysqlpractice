/* Website analytics - Visitors Per Day */

create table web_visits(
   visit_id int,
   user_id int,
   visit_date date
);

insert into web_visits
values(1, 101, "2025-04-01"),
      (2, 102, "2025-04-01"),
      (3, 103, "2025-04-01"),
      (4, 104, "2025-04-02"),
      (5, 105, "2025-04-02");
      
select count(user_id) as Visitors, visit_date
from web_visits
group by visit_date;      