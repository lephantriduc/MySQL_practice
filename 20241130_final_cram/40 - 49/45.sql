-- 45.	List the product lines and vendors for product lines which are supported by < 5 vendors (3)
SELECT
    p.productLine,
    p.productVendor
FROM
    products p
WHERE
    p.productLine = (
        SELECT p.productLine FROM products p GROUP BY p.productLine HAVING COUNT(p.productVendor) < 5
                    )

# Learnt about sargable condition in SQL.
# https://en.wikipedia.org/wiki/Sargable
