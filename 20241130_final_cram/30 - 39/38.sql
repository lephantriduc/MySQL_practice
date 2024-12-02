-- 38.	List all people that we deal with (employees and customer contacts).
--      Display first name, last name, company name (or employee) (145)
SELECT
    c.contactFirstName AS firstName,
    c.contactLastName  AS lastName
FROM
    customers c
UNION
SELECT
    e.firstName,
    e.lastName
FROM
    employees e

-- UNION removes duplicates.
-- If you want to allow duplicates, use UNION ALL instead.
