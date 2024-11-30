# Compute the profit generated by each sales representative based on the orders from the customers they serve.
# Sort by profit generated descending.
SELECT
    CONCAT(e.firstName, ' ', e.lastName)                                     AS sales_rep_name,
    SUM(od.quantityOrdered * od.priceEach - od.quantityOrdered * p.buyPrice) AS profit
FROM
    employees e
    JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
    JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    JOIN products p ON od.productCode = p.productCode
GROUP BY
    e.firstName, e.lastName
ORDER BY
    profit DESC