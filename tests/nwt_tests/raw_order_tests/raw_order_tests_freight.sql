with
orders as (
    select * from {{ ref('raw_orders') }}
)

select * from orders
where freight <= 0

--freight cannot be 0 or lesser than 0. This shows that there is NO orders lesser or equals to 0, meaning there is nothing to clean here.