-- 54.	List all the customers who have never made a payment on the same date as another customer. (57)
select
    c.customerNumber
from customers c
where c.customerNumber not in (
    # Customers who order the same date with someone else
    # 64
    SELECT DISTINCT
        p.customerNumber
    FROM
        payments p
    WHERE
        EXISTS(
            SELECT 1
            FROM payments other
            WHERE other.customerNumber <> p.customerNumber AND other.paymentDate = p.paymentDate
              )
);

# I got 58 for this question. I don't know why the answer is 57.

# All customers
# 98
select distinct p.customerNumber
from payments p;

# Customers that don't have a payment
# 24
select
    c.customerNumber
from customers c
left join payments p on c.customerNumber = p.customerNumber
where p.checkNumber is null


# 98 - 64 = 34
# 34 + 24 = 58
