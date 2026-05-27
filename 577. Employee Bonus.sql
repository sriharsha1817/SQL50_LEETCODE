select
    s.name,n.bonus
from Employee s
LEFT JOIN Bonus n
ON s.empId=n.EmpId
where bonus<1000 or bonus is null;