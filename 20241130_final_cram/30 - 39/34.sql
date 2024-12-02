-- 34.	List the average of the money spent on each product across all orders
--      where that product appears when the customer is based in Japan.
--      Show these products in descending order by the average expenditure (45).
SELECT
    p.productCode,
    p.productName,
    AVG(od.quantityOrdered * od.priceEach) AS average_expenditure
FROM
    products p
    JOIN orderdetails od ON p.productCode = od.productCode
    JOIN orders o ON od.orderNumber = o.orderNumber
    JOIN customers c ON o.customerNumber = c.customerNumber
WHERE
    c.country = 'Japan'
GROUP BY
    p.productCode, p.productName
ORDER BY
    average_expenditure DESC
