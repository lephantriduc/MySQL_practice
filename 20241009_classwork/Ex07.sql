SELECT
    orderNumber,
    SUM(quantityOrdered * priceEach) AS totalCost,
    SUM(quantityOrdered)             AS totalNo
FROM
    orderdetails
WHERE
    productCode <> 'S18_1749'
GROUP BY
    orderNumber
HAVING
    totalCost <= 2000
    AND totalNo > 630
