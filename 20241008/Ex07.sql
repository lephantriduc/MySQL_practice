SELECT
    customerNumber AS id,
    customerName   AS name
FROM
    customers
UNION
SELECT
    employeeNumber,
    CONCAT(firstName, ' ', lastName)
FROM
    employees
ORDER BY
    name, id
