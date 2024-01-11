with
orders as (
    select * from {{ ref('raw_orders') }}
)

select * from orders
where shipRegion LIKE '%NULL%'

-- shipregion has null but do not need to clean because creating new column for it