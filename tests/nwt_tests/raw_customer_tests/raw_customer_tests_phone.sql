with
customer as (
    select * from {{ ref('raw_customer') }}
)

select * from customer
where phone LIKE '%.%'
--data in phone that has '.' will be converted to '-'
