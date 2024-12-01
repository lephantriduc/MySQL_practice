-- 21.	select customers that live in the same state as their employee representative works (26)
SELECT
    c.customerName,
    e.employeeNumber,
    o.state
FROM
    customers c
    JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
    JOIN offices o ON e.officeCode = o.officeCode
WHERE
    c.state = o.state;
