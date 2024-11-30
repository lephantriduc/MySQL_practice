-- 11.	List orders made between June 16, 2004 and July 7, 2004 (8)
select
    o.orderNumber
from orders o
where o.orderDate BETWEEN '2004-6-16' and '2004-7-7'
