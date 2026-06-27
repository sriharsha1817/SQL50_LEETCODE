# Write your MySQL query statement below
select
    p1.product_name, sum(o1.unit) as unit
from
    Products p1
join Orders o1
on p1.product_id=o1.product_id
where order_date like '2020-02-%'
group by p1.product_id
having unit>=100;
