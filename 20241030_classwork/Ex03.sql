SELECT *
FROM
    orders
WHERE
    YEAR(orderDate) = (
        SELECT YEAR(MAX(orderDate))
        FROM orders
                      )
    AND MONTH(orderDate) = (
        SELECT MONTH(MAX(orderDate))
        FROM orders
                           )
