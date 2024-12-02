-- 29.	What is the number of orders per status (6)
SELECT
    o.status,
    COUNT(*)
FROM
    orders o
GROUP BY
    o.status
