-- 15.	List all products supplied by 'Highway 66 Mini Classics' (9)
SELECT
    c.productCode,
    c.productName
FROM
    products c
WHERE
    c.productVendor = 'Highway 66 Mini Classics'