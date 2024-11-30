-- 4.	List firstname and lastname for each employee. Sort by lastname then firstname (23)
SELECT
    e.firstName,
    e.lastName
FROM
    employees e
ORDER BY
    e.lastName, e.firstName
