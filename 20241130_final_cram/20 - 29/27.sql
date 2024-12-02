-- 27.	Find the average payment made by a customer (1)
SELECT
    AVG(p.amount) AS average_payment
FROM
    payments p
