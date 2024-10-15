SELECT
    l.productLine,
    COALESCE(SUM(p.quantityInStock), 0) AS totalCount
FROM
    productlines AS l
    INNER JOIN products AS p ON l.productLine = p.productLine
GROUP BY
    l.productLine
ORDER BY
    totalCount DESC

# Extra problem: If there exists a product line with no products => return a total count of 0
# => use COALESCE
