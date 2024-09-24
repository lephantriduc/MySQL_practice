SELECT
    orderNumber,
    shippedDate
FROM
    orders
WHERE
    MONTH(shippedDate) = 4
    AND YEAR(shippedDate) = 2005
    AND STATUS = 'Shipped';
