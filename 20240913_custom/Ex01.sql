SELECT
    part.name                AS part_name,
    SUM(order_part.quantity) AS part_quantity
FROM
    `order`
    JOIN order_part ON order_part.order_id = `order`.id
    JOIN part ON part.id = order_part.part_id
WHERE
    `order`.`customer_id` = :customer_id
GROUP BY
    part_name;
