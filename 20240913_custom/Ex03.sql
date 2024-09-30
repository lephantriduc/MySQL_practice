SELECT
    CONCAT(customer.first_name, ' ', customer.last_name) AS customer_served
FROM
    customer
    JOIN `order` ON customer.id = `order`.customer_id
    JOIN employee ON `order`.employee_id = employee.id
WHERE
    employee_id = :employee_id
GROUP BY
    customer_id;
