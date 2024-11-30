-- 14.	List all customers who have the word 'Mini' in their name (10)
SELECT
    c.customerName
FROM
    customers c
WHERE
    c.customerName LIKE '%Mini%';

# The collation chosen is case-insensitive
