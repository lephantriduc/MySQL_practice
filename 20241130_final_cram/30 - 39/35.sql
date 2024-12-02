-- 35.	What is the profit per product (MSRP-buy price) (110)
SELECT
    p.productCode,
    p.msrp - p.buyPrice
FROM
    products p
