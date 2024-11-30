-- 11.	List orders made between June 16, 2004 and July 7, 2004 (8)
SELECT
    o.orderNumber
FROM
    orders o
WHERE
    o.orderDate BETWEEN '2004-6-16' AND '2004-7-7'
