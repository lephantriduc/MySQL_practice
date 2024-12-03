-- 50.	What is the name of the customer, the order number,
--      and the total cost of the most expensive orders? (1)
SELECT
    c.customerName,
    od.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS cost
FROM
    orderdetails od
    NATURAL JOIN orders o
    NATURAL JOIN customers c
GROUP BY
    od.orderNumber
HAVING
    cost = (
        SELECT
            MAX(order_costs.cost)
        FROM
            (
                SELECT SUM(od.quantityOrdered * od.priceEach) AS cost FROM orderdetails od GROUP BY od.orderNumber
            ) AS order_costs
           );
