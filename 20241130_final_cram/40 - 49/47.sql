-- 47.	Find the first name and last name of all customer contacts
--      whose customer is located in the same state as the San Francisco office. (11)
SELECT
    c.contactFirstName,
    c.contactLastName
FROM
    customers c
WHERE
    c.state = (
        SELECT o.state
        FROM offices o
        WHERE o.city = 'San Francisco'
              );
