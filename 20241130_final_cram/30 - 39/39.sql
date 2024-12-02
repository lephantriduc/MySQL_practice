-- 39.	List the last name, first name, and employee number of all the employees who do not have any customers.
--      Order by last name first, then the first name. (8)

-- Use subquery
-- Why removing WHERE ... IS NOT NULL in the subquery gives us wrong result?
SELECT
    e.employeeNumber,
    e.firstName,
    e.lastName
FROM
    employees e
WHERE
    e.employeeNumber NOT IN (
        SELECT c.salesRepEmployeeNumber FROM customers c WHERE c.salesRepEmployeeNumber IS NOT NULL
                            );

-- Use left join
SELECT
    e.employeeNumber,
    e.firstName,
    e.lastName
FROM
    employees e
    LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE
    c.customerName IS NULL
