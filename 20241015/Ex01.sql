SELECT
    employees.employeeNumber                             AS id,
    CONCAT(employees.firstName, ' ', employees.lastName) AS fullName,
    offices.officeCode
FROM
    employees
    JOIN offices ON employees.officeCode = offices.officeCode
