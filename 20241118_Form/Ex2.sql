# Compute the total value ordered, total amount paid, and their difference for each customer for orders placed in 2004
# and payments received in 2004 (Hint; Create views for the total paid and total ordered).
SELECT
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach)                      AS total_value_ordered,
    SUM(p.amount)                                               AS total_amount_paid,
    ABS(SUM(od.quantityOrdered * od.priceEach) - SUM(p.amount)) AS diff
FROM
    customers c
    JOIN payments p ON c.customerNumber = p.customerNumber
    JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber

WHERE
    YEAR(o.orderDate) = 2004
GROUP BY
    c.customerName
