SELECT
    customerName
FROM
    customers
WHERE
    customerName LIKE '%A%'
    OR customerName LIKE '%B%'
    OR customerName LIKE '%C%'

# % represents zero, one or multiple characters.
# Extra: _ represents one, single character.
