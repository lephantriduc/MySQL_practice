-- 44.	What product that makes us the most money (qty*price) (1)
SELECT
    p.productName,
    SUM(od.quantityOrdered * od.priceEach) AS total
FROM
    orderdetails od
    NATURAL JOIN products p
GROUP BY
    p.productName
ORDER BY
    total DESC
LIMIT 1;
