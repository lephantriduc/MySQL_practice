SELECT
    orderNumber,
    shippedDate
FROM
    orders
WHERE
    shippedDate >= '2004-01-04'
    AND shippedDate <= '2004-02-04'
    AND status = 'SHIPPED'
