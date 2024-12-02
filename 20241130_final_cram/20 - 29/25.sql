-- 25.	Find the total of all payments made by each customer (98)
SELECT
    c.customerName,
    SUM(p.amount)
FROM
    customers c
    JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY
    c.customerName
