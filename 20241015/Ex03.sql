SELECT
    p.productName,
    o.orderNumber,
    c.customerName
FROM
    products AS p
    LEFT JOIN orderdetails AS d ON p.productCode = d.productCode
    LEFT JOIN classicmodels.orders o ON d.orderNumber = o.orderNumber
    LEFT JOIN customers AS c ON o.customerNumber = c.customerNumber
WHERE
    customerName IS NULL
