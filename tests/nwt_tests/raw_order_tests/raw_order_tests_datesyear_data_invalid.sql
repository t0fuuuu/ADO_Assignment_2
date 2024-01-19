with
orders as (
    select * from {{ ref('raw_orders') }}
)

SELECT * 
FROM orders
WHERE 
    orderDate LIKE '%0096%' OR
    orderDate LIKE '%0097%' OR
    orderDate LIKE '%0098%' OR
    requiredDate LIKE '%0096%' OR
    requiredDate LIKE '%0097%' OR
    requiredDate LIKE '%0098%' OR
    shippedDate LIKE '%0096%' OR
    shippedDate LIKE '%0097%' OR
    shippedDate LIKE '%0098%'


--can be seen that there are wrong data in both orderdate and required date (idk abt shippeddate) like 0098 for the year instead of 1998