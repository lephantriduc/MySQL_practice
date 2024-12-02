-- 26.	Find the largest payment made by a customer (1)
SELECT
    MAX(p.amount) AS largest_payment
FROM
    payments p
