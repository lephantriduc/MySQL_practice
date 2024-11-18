# Find the products sold in 2003 but not 2004
SELECT
    od.productCode
FROM
    orderdetails od
    JOIN orders o ON od.orderNumber = o.orderNumber
WHERE
    YEAR(o.orderDate) = 2003
    AND od.productCode NOT IN (
        SELECT
            od1.productCode
        FROM
            orderdetails od1
            JOIN orders o1 ON od1.orderNumber = o1.orderNumber
        WHERE
            YEAR(o1.orderDate) = 2004
                              )
