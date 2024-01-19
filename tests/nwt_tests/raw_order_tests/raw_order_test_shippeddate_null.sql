with
orders as (
    select * from {{ ref('raw_orders') }}
)

--only ShippedDate contains null values that we will not impute bc it may not be shipped or cancelled
SELECT * FROM orders
WHERE ShippedDate IS NULL