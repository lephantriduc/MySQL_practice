SELECT
    employeeNumber,
    lastName
FROM
    employees
WHERE
    lastName NOT LIKE '%b%'
