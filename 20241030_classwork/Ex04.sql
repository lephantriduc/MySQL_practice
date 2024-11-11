SELECT *
FROM
    orders
WHERE
    EXISTS (
        SELECT * FROM orderdetails WHERE orders.orderNumber = orderdetails.orderNumber
           );

SELECT
    orders.orderNumber,
    SUM(o.priceEach * o.quantityOrdered) AS total
FROM
    orders
    JOIN classicmodels.orderdetails o ON orders.orderNumber = o.orderNumber
GROUP BY
    orderNumber;

SELECT orderNumber,
    (SELECT SUM(od.quantityOrdered * od.priceEach)
        FROM orderdetails as od
        WHERE od.orderNumber = o.orderNumber) as totalValue
FROM orders as o;
