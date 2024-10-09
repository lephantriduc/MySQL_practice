SELECT
    COUNT(orderDate) AS count
FROM
    orders
WHERE
    MONTH(orderDate) = 3
    AND YEAR(orderDate) = 2005
