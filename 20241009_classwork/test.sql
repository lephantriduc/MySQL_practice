SELECT
    country,
    COUNT(creditLimit) AS a
FROM
    classicmodels.customers
WHERE
    creditLimit > 50000
GROUP BY
    country
HAVING
    a > 10
ORDER BY
    a DESC

# thứ tự: from -> where -> group -> (having) -> select -> order
