-- 30.	List all offices and the number of employees working in each office (7)
SELECT
    e.officeCode,
    COUNT(*)
FROM
    employees e
GROUP BY
    e.officeCode
