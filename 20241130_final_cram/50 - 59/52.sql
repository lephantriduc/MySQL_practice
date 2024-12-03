-- 52.	Show all the customers who have ordered at least one product
--      with the name "Ford" in it, that "Dragon Souveniers, Ltd." has also ordered.
--      List them in reverse alphabetical order,
--      and do not consider the case of the letters in the customer name in the ordering.
--      Show each customer no more than once. (61)
SELECT DISTINCT
    o.customerNumber,
    c.customerName
FROM
    orderdetails od
    NATURAL JOIN orders o
    NATURAL JOIN customers c
WHERE
    od.productCode IN (
        SELECT
            od.productCode
        FROM
            orderdetails od
            NATURAL JOIN products p
            NATURAL JOIN orders o
            NATURAL JOIN customers c
        WHERE
            p.productName LIKE '%Ford%'
            AND c.customerName = 'Dragon Souveniers, Ltd.'
                      )
ORDER BY
    c.customerName DESC
