SELECT
    c.customerName,
    o.orderNumber,
    p.productName
FROM
    customers AS c
    LEFT JOIN classicmodels.orders o ON c.customerNumber = o.customerNumber
    LEFT JOIN orderdetails AS d ON o.orderNumber = d.orderNumber
    LEFT JOIN products AS p ON d.productCode = p.productCode
