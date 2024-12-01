-- 20.	select customers that live in the same state as one of our offices (26)
select
    o.officeCode,
    c.customerName,
    o.state
from customers c
join offices o on c.state = o.state
