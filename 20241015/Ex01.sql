SELECT
    employees.employeeNumber                             AS id,
    CONCAT(employees.firstName, ' ', employees.lastName) AS fullName,
    offices.addressLine1                                 AS office
FROM
    employees
    JOIN offices ON employees.officeCode = offices.officeCode
