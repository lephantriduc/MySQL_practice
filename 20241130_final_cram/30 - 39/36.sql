-- 36.	List the Customer Name and their total orders (quantity * priceEach)
--      across all orders that the customer has ever placed with us,
--      in descending order by order total
--      for those customers who have ordered more than $100,000.00 from us. (32)
SELECT
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach) AS total
FROM
    customers c
    JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    c.customerName
HAVING
    total > 100000
ORDER BY
    total DESC
