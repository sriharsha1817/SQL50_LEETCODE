select t.id
from Weather y
cross join Weather t
WHERE DATEDIFF(t.recordDate,y.recordDate) = 1
    AND t.temperature > y.temperature