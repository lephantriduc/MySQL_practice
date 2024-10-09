SELECT
    MONTH(orderDate)   AS month,
    COUNT(orderNumber) AS count
FROM
    orders
WHERE
    YEAR(orderDate) = 2005
GROUP BY
    month
