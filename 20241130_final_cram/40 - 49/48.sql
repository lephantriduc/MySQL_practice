-- 48.	What is the customer and sales person of the highest priced order? (1)
SELECT
    o.customerNumber,
    c.customerName,
    c.salesRepEmployeeNumber
FROM
    orders o
    NATURAL JOIN customers c
WHERE
    o.orderNumber = (
        SELECT
            od.orderNumber
        FROM
            orderdetails od
        GROUP BY od.orderNumber
        ORDER BY SUM(od.quantityOrdered * od.priceEach) DESC
        LIMIT 1
                    );
