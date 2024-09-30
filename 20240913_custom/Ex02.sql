SELECT
    CONCAT(customer.first_name, " ", customer.last_name) AS name,
    SUM((part.price * order_part.quantity))              AS total_cost
FROM
    `order`
    JOIN order_part ON `order`.id = order_part.order_id
    JOIN part ON order_part.part_id = part.id
    JOIN customer ON `order`.customer_id = customer.id
WHERE
    `order`.customer_id = :customer_id
