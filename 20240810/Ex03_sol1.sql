# "Tên" is ambiguous. It can mean either firstName only or both firstName and lastName
# In this exercise I assume they mean by firstName only
SELECT
    employeeNumber,
    firstName
FROM
    employees
WHERE
    firstName LIKE 'a%'
    OR firstName LIKE '%r'
