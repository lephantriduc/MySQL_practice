-- 41.	List the Product Code and Product name of every product that has never been
--      in an order in which the customer asked for more than 48 of them.
--      Order by the Product Name.  (8)
SELECT
    p.productCode,
    p.productName
FROM
    products p
WHERE
    p.productCode NOT IN (
        SELECT
            p.productCode
        FROM
            orderdetails od
            JOIN products p ON od.productCode = p.productCode
        WHERE
            od.quantityOrdered > 48
                         )
