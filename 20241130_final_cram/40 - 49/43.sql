-- 43.	List the name of all customers who do not live in the same state and country with any other customer.
--      Do not use a count for this exercise.  Order by the customer name.
SELECT
    c.customerName,
    c.state,
    c.country
FROM
    customers c
WHERE
    c.state IS NOT NULL
    AND NOT EXISTS(
        SELECT
            1
        FROM
            customers other
        WHERE
            other.customerNumber <> c.customerNumber
            AND other.state = c.state
            AND other.country = c.country
                  )
ORDER BY
    c.customerName
