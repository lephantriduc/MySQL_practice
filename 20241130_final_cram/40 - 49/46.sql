-- 46.	List the products in the product line with the most number of products (38)

-- Using LIMIT
SELECT
    p.productCode,
    p.productName
FROM
    products p
WHERE
    p.productLine = (
        SELECT
            pl.productLine
        FROM
            products p
            NATURAL JOIN productlines pl
        GROUP BY pl.productLine
        ORDER BY COUNT(p.productCode) DESC
        LIMIT 1
                    );

-- Using 3 subqueries (This is stupid)
SELECT
    p.productCode,
    p.productName
FROM
    products p
WHERE
    p.productLine = (
        SELECT
            p.productLine
        FROM
            products p
        GROUP BY p.productLine
        HAVING
            COUNT(p.productCode) = (
                SELECT
                    MAX(lines_prod_cnt.cnt)
                FROM
                    (
                        SELECT COUNT(p.productName) AS cnt FROM products p GROUP BY p.productLine
                    ) AS lines_prod_cnt
                                   )
                    )
