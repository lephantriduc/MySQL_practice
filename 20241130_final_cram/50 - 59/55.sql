-- 55.	Find customers who have ordered the same thing.
--      Find only those customer pairs who have ordered the same thing as each other at least 201 times (1)
WITH customer_order AS (
    SELECT
        o.customerNumber,
        od.productCode,
        COUNT(*) AS order_cnt
    FROM
        orders o
        NATURAL JOIN orderdetails od
    GROUP BY o.customerNumber, od.productCode
                       ), common_orders AS (
    SELECT
        co1.customerNumber                 AS customer1,
        co2.customerNumber                 AS customer2,
        SUM(co1.order_cnt + co2.order_cnt) AS total_common_orders
    FROM
        customer_order co1
        JOIN customer_order co2 ON co1.productCode = co2.productCode AND co1.customerNumber < co2.customerNumber
                                                                        # I use < instead of <> because to
                                                                        # avoid duplicate of pair (a, b) and (b, a)
    GROUP BY co1.customerNumber, co2.customerNumber
                                           )

SELECT
    co.customer1,
    co.customer2,
    co.total_common_orders
FROM
    common_orders co
WHERE
    co.total_common_orders >= 201
