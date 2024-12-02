-- 37.	List all customers who didn't order in 2005 (78)
SELECT
    c.customerNumber,
    c.customerName
FROM
    customers c
WHERE
    c.customerNumber NOT IN (
        -- The orders in 2005
        SELECT o.customerNumber
        FROM orders o
        WHERE YEAR(orderDate) = 2005
                            )
