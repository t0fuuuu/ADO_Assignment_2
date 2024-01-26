with
product as (
    select * from {{ ref('raw_product') }}
)

select * from product
where reorderlevel < 0

