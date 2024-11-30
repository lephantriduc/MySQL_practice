-- 17.	List all employees that don't have a manager (1)
SELECT
    e.employeeNumber
FROM
    employees e
WHERE
    e.reportsTo IS NULL
