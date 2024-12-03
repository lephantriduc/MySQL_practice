-- 53.	Which products have an MSRP within 5% of the average MSRP across all products?
--      List the Product Name, the MSRP, and the average MSRP ordered by the product MSRP. (14)
SELECT
    p.productName,
    p.MSRP
FROM
    products p
WHERE
    p.MSRP / (
        SELECT AVG(p.MSRP)
        FROM products p
             ) BETWEEN 0.95 AND 1.05

# Use ratio to avoid selecting twice as below:
#
#     p.MSRP BETWEEN 0.95 * (
#         SELECT AVG(p.MSRP)
#         FROM products p
#              )
#         AND 1.05 * (
#         SELECT AVG(p.MSRP)
#         FROM products p
#              )
