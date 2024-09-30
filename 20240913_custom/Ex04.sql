SELECT
    AVG(DATEDIFF(actual_ship_date, receipt_date)) AS average_waiting_time
FROM
    `order`
