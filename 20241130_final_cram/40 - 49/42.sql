-- 42.	List the first name and last name of any customer who ordered any products
--      from either of the two product lines 'Trains' or 'Trucks and Buses'.
--      Do not use an "or".
--      Instead perform a union.
--      Order by the customer's name.  (61)
SELECT DISTINCT
    c.contactFirstName,
    c.contactLastName
FROM
    customers c
    NATURAL JOIN orders o
    NATURAL JOIN orderdetails od
    NATURAL JOIN products p
WHERE
    p.productLine = 'Trucks and Buses'
UNION
SELECT DISTINCT
    c.contactFirstName,
    c.contactLastName
FROM
    customers c
    NATURAL JOIN orders o
    NATURAL JOIN orderdetails od
    NATURAL JOIN products p
WHERE
    p.productLine = 'Trains'
ORDER BY
    contactLastName, contactFirstName
