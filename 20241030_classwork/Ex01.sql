SELECT
    productCode
FROM
    products
WHERE
    productCode IN (
        SELECT
            productCode
        FROM
            orderdetails
        WHERE
            orderdetails.orderNumber IN (
                SELECT orderNumber FROM orders WHERE orderDate BETWEEN '2005-03-01' AND '2005-03-31'
                                        )
                   )
