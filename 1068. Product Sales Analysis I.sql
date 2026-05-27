select
    s.product_name,n.year,n.price
from Sales n
JOIN Product s
ON n.product_id=s.product_id;



