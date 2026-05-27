select
    s.unique_id, n.name
from Employees n
LEFT JOIN EmployeeUNI s
ON s.id=n.id;