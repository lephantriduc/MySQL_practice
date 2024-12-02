-- 28.	What is the total number of products per product line (7)
SELECT
    p.productLine,
    COUNT(*)
FROM
    products p
GROUP BY
    p.productLine
