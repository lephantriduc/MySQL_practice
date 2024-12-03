-- 51.	Perform the above query using a view. (1)
--    YOU NEED TO RUN BOTH QUERIES BELOW:
--    However, in derby, there is no "OR REPLACE" so after the first time you
--    create the below view table, there's no way to replace it in the case
--    that some other order becomes the highest price order besides manually
--    dropping the view and running it again
CREATE VIEW order_costs AS
    SELECT
        od.orderNumber,
        SUM(od.quantityOrdered * od.priceEach) AS total
    FROM
        orderdetails od
    GROUP BY
        od.orderNumber;

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
        SELECT MAX(oc.total)
        FROM order_costs oc
           )
