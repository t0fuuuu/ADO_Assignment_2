with
orders as (
    select * from {{ ref('raw_orders') }}
)

select * from orders
where requiredDate < orderDate

--there is no wrong date ordering, so nothing to clean here