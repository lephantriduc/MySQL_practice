SELECT
    customers.city        AS city,
    COUNT(customers.city) AS count
FROM
    customers
GROUP BY
    city
