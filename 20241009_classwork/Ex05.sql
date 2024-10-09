SELECT
    productLine,
    SUM(quantityInStock) AS sum
FROM
    products
GROUP BY
    productLine
