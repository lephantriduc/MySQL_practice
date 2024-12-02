-- 23.	List products that didn't sell (1)
SELECT
    p.productCode,
    od.orderNumber
FROM
    products p
    LEFT JOIN orderdetails od ON p.productCode = od.productCode
WHERE
    od.orderNumber IS NULL
