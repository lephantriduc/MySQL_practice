-- 24.	List all customers and their sales rep even if they don't have a sales rep (122)
SELECT
    c.customerName                       AS customer,
    CONCAT(e.firstName, ' ', e.lastName) AS salesRep
FROM
    customers c
    LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
