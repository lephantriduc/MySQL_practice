# For orders containing more than two products, report those products that constitute more than 50% of the value of the order.
SELECT
    od.orderNumber,
    p.productName,
    od.priceEach * od.quantityOrdered                      product_value_in_order,
    o2p.order_value                                     AS order_value,
    od.priceEach * od.quantityOrdered / o2p.order_value AS percentage

FROM
    orderdetails od
    JOIN (

        SELECT
            od1.orderNumber                          AS orderNumber,
            SUM(od1.quantityOrdered * od1.priceEach) AS order_value
        FROM
            orderdetails od1
        GROUP BY od1.orderNumber
        HAVING
            COUNT(*) > 2

         ) AS o2p ON od.orderNumber = o2p.orderNumber
    JOIN products p ON od.productCode = p.productCode

WHERE
    od.priceEach * od.quantityOrdered / o2p.order_value > 0.5
