-- 33.	List the products and the profit that we have made on them.
--      The profit in each order for a given product is (priceEach - buyPrice) * quantityOrdered.
--      List the product's name and code with the total profit that we have earned selling that product.
--      Order the rows descending by profit.
--      Only show those products whose profit is greater than $60,000.00. (11)
SELECT
    p.productName,
    p.productCode,
    SUM((od.priceEach - p.buyPrice) * od.quantityOrdered) AS profit
FROM
    products p
    JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY
    p.productName, p.productCode
HAVING
    profit > 60000
ORDER BY
    profit DESC
