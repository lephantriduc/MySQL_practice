-- 40.	List the states and the country that the state is part of that have
--      customers but not offices,
--      offices but not customers,
--      or both one or more customers and one or more offices all in one query.
--      Designate which state is which with the string 'Customer', 'Office', or 'Both'.
--      If a state falls into the "Both" category, do not list it as a Customer or an Office state.
--      Order by the country, then the state.
--      Give the category column (where you list 'Customer', 'Office', or 'Both') a header of "Category"
--      and exclude any entries in which the state is null. (19)

-- Using LEFT JOIN to filter NULLs
SELECT
    o.state   AS State,
    o.country AS Country,
    'Office'  AS Category
FROM
    offices o
    LEFT JOIN customers c ON c.state = o.state
WHERE
    c.customerNumber IS NULL
    AND o.state IS NOT NULL

UNION

SELECT
    c.state,
    c.country,
    'Customer'
FROM
    customers c
    LEFT JOIN offices o ON c.state = o.state
WHERE
    o.officeCode IS NULL
    AND c.state IS NOT NULL

UNION


SELECT
    c.state,
    c.country,
    'Both'
FROM
    customers c
    JOIN offices o ON c.state = o.state;

-- Using NOT EXISTS to filter NULLs
SELECT
    o.state   AS State,
    o.country AS Country,
    'Office'  AS Category
FROM
    offices o
WHERE
    o.state IS NOT NULL
    AND NOT EXISTS (
        SELECT 1
        FROM customers c
        WHERE c.state = o.state
                   )

UNION

SELECT
    c.state,
    c.country,
    'Customer'
FROM
    customers c
WHERE
    c.state IS NOT NULL
    AND NOT EXISTS(
        SELECT 1
        FROM offices o
        WHERE o.state = c.state
                  )

UNION


SELECT
    c.state,
    c.country,
    'Both'
FROM
    customers c
    JOIN offices o ON c.state = o.state;
