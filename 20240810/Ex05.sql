SELECT
    productCode,
    productName,
    quantityInStock
FROM
    products
WHERE
    LENGTH(quantityInStock) = 4
    AND quantityInStock LIKE '7%3'
