-- 19.	List of productlines and vendors that supply the products in that productline. (65)
SELECT DISTINCT
    p.productVendor,
    p.productline
FROM
    products p

# WHY WOULD WE NEED NATURAL JOIN?????
