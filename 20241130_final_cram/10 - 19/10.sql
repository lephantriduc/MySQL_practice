-- 10.	List all offices not in the USA (4)
SELECT
    o.officeCode,
    o.country
FROM
    offices o
WHERE
    o.country <> 'USA'
