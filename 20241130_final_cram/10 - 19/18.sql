-- 18.	Display every order along with the details of that order for order numbers 10270, 10272, 10279 (23)
-- Hint: this can be done two ways. Try both of them. Which is easier if you have a large number of selection criteria?
SELECT
    od.*
FROM
    orderdetails od
WHERE
    od.orderNumber = 10270
    OR od.orderNumber = 10272
    OR od.orderNumber = 10279;

SELECT
    od.*
FROM
    orderdetails od
WHERE
    od.orderNumber IN (10270, 10272, 10279)

# Why would we need a natural join here?
