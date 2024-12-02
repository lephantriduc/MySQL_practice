-- 32.	List the orderNumber and order total for all orders that totaled more than $60,000.00 (3)
SELECT
    o.orderNumber,
    SUM(od.priceEach * od.quantityOrdered) AS total
FROM
    orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    o.orderNumber
HAVING
    total > 60000;
