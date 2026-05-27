select
    p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) as average_price
from Prices p
LEFT JOIN UnitsSold u
ON p.product_id=u.product_id
And u.purchase_date between p.start_date and p.end_date
group by p.product_id