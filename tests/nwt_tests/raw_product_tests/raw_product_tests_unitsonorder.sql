with
product as (
    select * from {{ ref('raw_product') }}
)

select * from product
where unitsonorder < 0