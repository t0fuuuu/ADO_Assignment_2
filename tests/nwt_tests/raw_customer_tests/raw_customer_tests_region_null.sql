with
customer as (
    select * from {{ ref('raw_customer') }}
)

select * from customer
where region LIKE '%NULL%'
--found out region have null and some regions are inaccurate (wrong region), hence we gnna make a new column for dervied_region
--fax also have null but we are js not gonna bother cleaning it