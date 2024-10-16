SELECT
    p.productName,
    d.orderNumber
FROM
    products AS p
    LEFT JOIN orderdetails AS d ON p.productCode = d.productCode
WHERE
    d.productCode IS NULL
