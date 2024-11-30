-- 12.	List products that we need to reorder (quantityinstock < 1000) (12)
SELECT
    p.productCode,
    p.productName
FROM
    products p
WHERE
    p.quantityInStock < 1000
