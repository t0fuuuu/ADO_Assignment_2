with
orders as (
    select * from {{ ref('raw_orders') }}
)

select * 
from orders
WHERE orderDate IS NULL OR requiredDate IS NULL OR shippedDate IS NULL

--only shippeddate contains null values that needs to be imputed
--also can be seen that there are weird formats for orderdate and requireddate that requires some cleaning/changing of format
