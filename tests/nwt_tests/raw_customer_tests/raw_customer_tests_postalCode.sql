with
customer as (
    select * from {{ ref('raw_customer') }}
)

select * from customer
where postalCode LIKE '%NULL%'