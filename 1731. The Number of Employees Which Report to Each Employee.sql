# Write your MySQL query statement below
select
    n.employee_id, 
    n.name, 
    count(e.employee_id) as reports_count,
    round(avg(e.age)) as average_age
from employees e
join employees n
on e.reports_to=n.employee_id
group by employee_id
order by n.employee_id;