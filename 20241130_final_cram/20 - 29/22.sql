-- 22.	select customerName, orderDate, quantityOrdered, productLine, productName
-- for all orders made and shipped in 2005 (444)
SELECT
    c.customerName,
    o.orderDate,
    od.quantityOrdered,
    p.productLine,
    p.productName
FROM
    orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    JOIN products p ON od.productCode = p.productCode
    JOIN customers c ON o.customerNumber = c.customerNumber
WHERE
    YEAR(o.orderDate) = 2005
    AND YEAR(o.shippedDate) = 2005

# using
# WHERE
#   o.orderDate BETWEEN '2005-01-01' AND '2005-12-31'
# would be faster.
