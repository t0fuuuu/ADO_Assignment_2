with
orders as (
    select * from {{ ref('raw_orders') }}
)

--select OrderDate, RequiredDate, ShippedDate
--from orders

--also can be seen that there are weird formats (TZ) for ALL 3 DATES that requires some cleaning/changing of format
--can be seen that there are wrong data in ALL 3 DATES like 0098 for the year instead of 1998
SELECT * FROM orders
WHERE OrderDate LIKE '00%' OR RequiredDate LIKE '00%' OR ShippedDate LIKE '00%'