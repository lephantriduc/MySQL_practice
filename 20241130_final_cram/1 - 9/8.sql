-- 8.	select contact firstname, contact lastname and credit limit for all customers
-- where credit limit > 50000 (85)
SELECT
    c.contactFirstName,
    c.contactLastName,
    c.creditLimit
FROM
    customers c
WHERE
    c.creditLimit > 50000
