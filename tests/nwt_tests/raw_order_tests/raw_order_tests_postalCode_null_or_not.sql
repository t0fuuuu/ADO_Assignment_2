with
orders as (
    select * from {{ ref('raw_orders') }}
)

select * from orders
where shipPostalCode LIKE '%NULL%'

--There are 19 rows with null for the column shippostalcode