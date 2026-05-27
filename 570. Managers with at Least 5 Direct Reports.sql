select
    name
from
    Employee
where id IN(
    select managerId
    from employee
    group by managerId
    having count(*)>=5
);








