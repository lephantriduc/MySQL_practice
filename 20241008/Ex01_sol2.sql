SELECT
    customerName
FROM
    customers
WHERE
    customerName REGEXP '[A-C]'

# REGEXP: regular expressions
# [A-C] means the string matches any char from 'a' to 'c'
# It is case-insensitive so [A-C] is the same as [a-c]

# Bonus: includes from a to f but excludes c:
#     customerName REGEXP '[A-F]'
#     and customerName REGEXP '^[^C]+$'
