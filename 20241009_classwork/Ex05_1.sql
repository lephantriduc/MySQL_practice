SELECT
    CONCAT(firstName, '-', lastName) fullName
FROM
    employees
WHERE
    firstName REGEXP '^[A-F]'
    OR lastName REGEXP '^[A-F]'
