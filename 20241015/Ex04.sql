SELECT
    o.orderNumber,
    o.orderDate,
    o.requiredDate,
    o.status,
    SUM(d.quantityOrdered * d.priceEach) AS totalCost
FROM
    orders o
    JOIN orderdetails d ON o.orderNumber = d.orderNumber
WHERE
    o.orderDate >= '2005-03-01'
    AND o.orderDate < '2005-04-01'
GROUP BY
    o.orderNumber, o.orderDate, o.requiredDate, o.status
