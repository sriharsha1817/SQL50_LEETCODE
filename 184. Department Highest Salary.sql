select
    d.name as Department, e.name as Employee, e.salary as Salary
from Employee e
JOIN Department d
where e.departmentId=d.id
AND (e.departmentId,salary) IN 
(SELECT departmentId, max(salary)
    from Employee group by departmentId
);

