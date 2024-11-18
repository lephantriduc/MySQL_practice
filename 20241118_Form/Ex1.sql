# What is the difference in days between the most recent and oldest order date in the Orders file?
SELECT
    DATEDIFF(MAX(o.orderDate), MIN(o.orderDate)) AS diff
FROM
    orders o
