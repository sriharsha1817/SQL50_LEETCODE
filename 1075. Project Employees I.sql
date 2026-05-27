select
    p.project_id, round(avg(experience_years),2) as average_years
from 
    Project p
join  Employee e
on p.employee_id = e.employee_id
Group by project_id;

