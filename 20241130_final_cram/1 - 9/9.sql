-- 9.	select customers who do not have a credit limit (0.00) (24)
select
    c.contactFirstName, c.contactLastName
from customers c
where c.creditLimit = 0.00
