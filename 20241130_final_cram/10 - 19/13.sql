-- 13.	List all orders that shipped after the required date (1)
SELECT
    o.orderNumber
FROM
    orders o
WHERE
    o.shippedDate > o.requiredDate
