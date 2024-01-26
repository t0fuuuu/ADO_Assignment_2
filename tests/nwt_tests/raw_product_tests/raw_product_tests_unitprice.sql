with
product as (
    select * from {{ ref('raw_product') }}
)

select * from product
where unitprice <= 0