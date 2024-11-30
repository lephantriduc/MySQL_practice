-- 16.	List all product not supplied by 'Highway 66 Mini Classics' (101)
SELECT
    c.productCode,
    c.productName
FROM
    products c
WHERE
    c.productVendor <> 'Highway 66 Mini Classics'
