SELECT
    o.productCode
FROM
    products
    JOIN classicmodels.orderdetails o ON products.productCode = o.productCode
    JOIN classicmodels.orders o2 ON o.orderNumber = o2.orderNumber
WHERE
    o2.orderDate BETWEEN '2005-03-01' AND '2005-03-31'
