# Write your MySQL query statement below
""with join ""

select
    c.name as Customers
from Customers c
left join Orders o
on c.id=o.customerId
where o.customerId is null;

"without join"
SELECT name as Customers
from Customers
where id not in (
    select customerId
    from Orders
);

