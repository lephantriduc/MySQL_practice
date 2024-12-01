-- 19.	List of productlines and vendors that supply the products in that productline. (65)
SELECT DISTINCT
    p.productline,
    p.productVendor
FROM
    products p
    NATURAL JOIN productlines
