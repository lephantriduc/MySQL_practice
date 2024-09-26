SELECT
    orderNumber,
    shippedDate
FROM
    orders
WHERE
    MONTH(orderDate) = 4
    AND YEAR(orderDate) = 2005
    AND STATUS = 'Shipped';
