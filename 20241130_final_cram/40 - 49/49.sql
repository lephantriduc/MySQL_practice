-- 49.	What is the order number and the cost of the order for the most expensive orders?
--      Note that there could be more than one order which all happen to add up to the same cost,
--      and that same cost could be the highest cost among all orders. (1)
SELECT
    od.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS cost
FROM
    orderdetails od
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
