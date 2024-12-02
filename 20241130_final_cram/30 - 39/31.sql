-- 31.	List the total number of products per product line where number of products > 3 (6)
SELECT
    p.productLine,
    COUNT(*)
FROM
    products p
GROUP BY
    p.productLine
HAVING
    COUNT(*) > 3
