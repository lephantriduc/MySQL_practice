SELECT
    l.productLine,
    SUM(p.quantityInStock) AS totalCount
FROM
    productlines AS l
    LEFT JOIN products AS p ON l.productLine = p.productLine
GROUP BY
    l.productLine
ORDER BY
    totalCount DESC
